import 'package:flutter/material.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pesca Predatória e Meio Ambiente',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                color: Colors.blue),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
              'pesca predatória e o meio ambiente: fiscalização e preservação da natureza resumo: o trabalho a seguir disserta sobre a pesca predatória e o meio ambiente, enfatizando o perigo da prática. 1. delimitação do tema...'),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('UFPE, ECONOMIA,TCC'), Text('RUBENS, JOSÉ')],
          ),
          const Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Ver mais detalhes'),
              Icon(
                Icons.arrow_forward_ios,
                size: 20.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
