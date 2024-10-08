import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroler =
      TextEditingController(text: ('Joao@bol.com'));
  TextEditingController senhacontroler = TextEditingController();

  bool olhoDaSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //Scrool que limita o teclado
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
                      flex: 1,
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
                  child: TextField(
                    controller: emailcontroler,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5),
                        hintText: 'informe seu email ',
                        icon: Icon(Icons.email),
                        hintStyle: TextStyle(color: Colors.grey)),
                    onChanged: (value) => {debugPrint(value)},
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  height: 50,
                  child: TextField(
                    controller: senhacontroler,
                    obscureText: olhoDaSenha,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Senha ',
                        icon: const Icon(
                            Icons.lock), //icone  desgrudadoe do edit   $ ___
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              olhoDaSenha = !olhoDaSenha;
                            });
                          },
                          child: Icon(olhoDaSenha
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintStyle: const TextStyle(color: Colors.grey)),
                    onChanged: (value) => {debugPrint(value)},
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  height: 50,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (emailcontroler.text.trim() == 'Joao@bol.com' &&
                            senhacontroler.text == '123'.trim()) {
                          debugPrint('Logado');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('senha errada ')));
                        }
                      },
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
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
