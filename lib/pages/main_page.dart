import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/pagina1.dart';
import 'package:trilhaapp/pages/pagina2.dart';
import 'package:trilhaapp/pages/pagina3.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controleDePagina = PageController(initialPage: 0);
  int posicaopagina = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main menu')),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text(
                      'Dados cadastrais',
                      style: TextStyle(fontSize: 20),
                    )),
                onTap: () {
                  Navigator.pop(context); //Fecha o menu quando chama tela

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DadosCadastrais(
                              nomeDatela: 'Dados cadastrais')));
                },
              ),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text(
                      'Privacidade',
                      style: TextStyle(fontSize: 20),
                    )),
                onTap: () {},
              ),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text(
                      'Configuração',
                      style: TextStyle(fontSize: 20),
                    )),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controleDePagina,
              onPageChanged: (value) => setState(() {
                posicaopagina = value;
              }),
              scrollDirection:
                  Axis.vertical, //Direcao do giro da troca de pagina
              children: const [pagina1Page(), pagina2Page(), Pagina3Page()],
            ),
          ),
          BottomNavigationBar(
              onTap: (value) {
                controleDePagina.jumpToPage(value);
              },
              currentIndex: posicaopagina,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.edit), label: 'Cadastro'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.exit_to_app), label: 'Exit'),
              ])
        ],
      ),
    );
  }
}
