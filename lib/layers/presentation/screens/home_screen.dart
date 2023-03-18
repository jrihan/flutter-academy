import 'package:academy/injection/dependencies_injection.dart';
import 'package:academy/layers/presentation/controllers/document_controller.dart';
import 'package:academy/layers/presentation/widgets/document_widget.dart';
import 'package:academy/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DocumentController _controller = getIt<DocumentController>();

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  _initialize() async {
    await _controller.getAllDocuments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('1.430 resultados', style: TextStyle(color: Colors.grey)),
        ],
        backgroundColor: Constants.colors.background,
        elevation: 0,
        title: Image.asset(
          'assets/images/logo/logo.png',
          fit: BoxFit.cover,
        ),
        centerTitle: false,
      ),
      backgroundColor: Constants.colors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Observer(builder: (BuildContext context) {
            return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: _controller.documents.length,
              itemBuilder: (context, index) =>
                  DocumentWidget(_controller.documents[index]),
            );
          }),
        ),
      ),
    );
  }
}
