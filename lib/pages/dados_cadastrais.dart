import 'package:flutter/material.dart';

class DadosCadastrais extends StatelessWidget {
  final String nomeDatela;
  const DadosCadastrais({super.key, required this.nomeDatela});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nomeDatela),
      ),
      body: const Center(
        child: Text('Terra'),
      ),
    );
  }
}
