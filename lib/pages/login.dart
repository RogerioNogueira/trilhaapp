import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  //Scrool que limita o teclado
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              //a box obtem o tamanho total dispositivo que esta executando
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                   
               
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 2,
                      child: Image.network(
                        "https://logopng.com.br/logos/google-37.png",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  'Já tem cadastro ?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text('Primeiro faça o login, depois a diferença.',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal))),
              
                const SizedBox(
                  height: 50,
                ),
          
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5),
                        hintText: 'informe seu email ',
                        icon: Icon(Icons.email),
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                
          
          
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Senha ',
                        icon: Icon(
                            Icons.lock), //icone  desgrudadoe do edit   $ ___
                        suffixIcon: Icon(Icons.visibility),
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
          
                
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  height: 50,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  5))), //serve para arrredondar as bordas
                          backgroundColor: WidgetStateProperty.all(
                              Colors.lightBlue)), //dar cor ao botao
                      child: const Text('ENTRAR',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                              
                ),
                Expanded(child: Container()),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  height: 50,
                  child: const Text('Cadastro',
                      style: TextStyle(
                        fontSize: 14,
                      )),
                ),
                
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin:
                        const EdgeInsetsDirectional.symmetric(horizontal: 30),
                    height: 50,
                    child: const Text('Criar conta',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue))),
                const Padding(padding: EdgeInsets.all(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}