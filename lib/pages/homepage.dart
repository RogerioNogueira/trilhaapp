

import 'package:trilhaapp/pages/login.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numero = 0;
  int quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return const LoginPage(); 
  }
}
