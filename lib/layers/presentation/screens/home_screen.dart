import 'package:academy/layers/presentation/widgets/document_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f5),
      body: SafeArea(
        child: ListView(children: const [
          DocumentWidget(),
        ]),
      ),
    );
  }
}
