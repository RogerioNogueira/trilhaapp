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
      
      backgroundColor: Colors.lightBlueAccent ,
      body: SizedBox(
        
        width: double.infinity,
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const  SizedBox(
                height: 70,
              ),
               
               Container(
                child: Icon(Icons.person_2,size:125,color: Colors.red, ),
              
            ),

            const SizedBox(height: 50,),

   
            Container(              
              alignment: Alignment.center,
              width: double.infinity,
              margin:const  EdgeInsetsDirectional.symmetric(horizontal: 30),
              color: Colors.blueGrey,
              height: 50,
              child: const Text('informe o email '),
            ),
            
            const SizedBox(height: 10,),

            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin:const  EdgeInsetsDirectional.symmetric(horizontal: 30),
              color: Colors.blueGrey,
              height: 50,
              child: const Text('informe a senha'),
            ),

            
            Expanded(child: Container(),),
            
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin:const  EdgeInsetsDirectional.symmetric(horizontal: 30),
              color: Colors.blueGrey,
              height: 50,
              child: const Text('Botão'),
            ),
            
             const SizedBox(height: 10,),
            
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin:const  EdgeInsetsDirectional.symmetric(horizontal: 30),
              color: Colors.blueGrey,
              height: 50,
              child: const Text('Botão'),
            ),
            
            const Padding(padding: EdgeInsets.all(10)),            
          ],
        ),
      ),
    );
  }
}