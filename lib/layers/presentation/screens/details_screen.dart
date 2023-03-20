import 'package:academy/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  Future<void> _launchUrl(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        builder: (BuildContext context, BoxConstraints constraints) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Conceitos Fundamentais da Economia',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'UFPE, ECONOMIA, TCC',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'RUBENS, JOSÉ',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                    'O tema aqui abordado trata-se da fiscalização da pesca predatória, uma ação que ocorre da fiscalização no Rio Branco, esse rio é um afluente e berçário do Rio Guaporé, que é o segundo maior rio do estado de Rondônia, o Rio Branco nasce na Chapada dos Parecis o ponto mais alto do estado e vem descendo cortando terras muito férteis local em que existem muitas montanhas, com isso geram-se muito oxigênio na água, o rio ainda passa por todo o vale do Guaporé, que conta com de planícies alagadas, que é o local que se encontra o berçário, isso tudo ocorre antes de desaguar no Rio Guaporé.'),
                const SizedBox(
                  height: 28.0,
                ),
                Center(
                  child: InkWell(
                    onTap: () => _launchUrl('https://www.google.com'),
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.2,
                      child: const Icon(
                        Icons.description_outlined,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
