import 'package:academy/injection/dependencies_injection.dart';
import 'package:academy/layers/presentation/controllers/document_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final DocumentController _controller = getIt<DocumentController>();

  void _createDocument() {
    _formKey.currentState?.save();
    if (_formKey.currentState!.validate()) {
      final formData = _formKey.currentState?.value;
      _controller.createDocument(
        docTitle: formData?["title"] as String,
        docAuthor: formData?["author"] ?? "anonymous",
        docCollege: formData?["college"] as String,
        docCourse: formData?["course"] as String,
        docDescription: formData?["description"] as String,
        docType: formData?["type"] as String,
        docUrl: formData?["url"] as String,
      );

      print(formData?["title"].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/logo/logo.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: FormBuilder(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      'Criar Documento',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  FormBuilderTextField(
                    name: 'title',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Título do Documento',
                    ),
                  ),
                  const SizedBox(height: 8),
                  FormBuilderTextField(
                    name: 'description',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Descrição',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    minLines: 8,
                  ),
                  const SizedBox(height: 8),
                  FormBuilderTextField(
                    name: 'url',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Link do arquivo',
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: FormBuilderTextField(
                          name: 'college',
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Faculdade',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: FormBuilderTextField(
                          name: 'course',
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Curso',
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  FormBuilderTextField(
                    name: 'type',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Tipo do Trabalho',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(
                            0, 45), // put the width and height you want
                      ),
                      onPressed: _createDocument,
                      child: const Text('Enviar',
                          style: TextStyle(fontSize: 20.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
