import 'package:flutter/material.dart';

class DadosCadastrais extends StatelessWidget {
  final String nomeDatela;
  const DadosCadastrais({super.key, required this.nomeDatela});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nomeDatela)),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Text(
              'Nome',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
