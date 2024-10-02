

//import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login.dart';
//import 'package:trilhaapp/services/gerador_numero_aleatorio.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

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



//     return Scaffold(
//       appBar: AppBar(
//         //backgroundColor: Colors.blueAccent ,
//         title: Text(style: GoogleFonts.aBeeZee(), 'Meu App'),
//       ),
//       body: Container(
//         width: double.infinity,
//         margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8), 

//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,  //Eixo horizontal 
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(style: GoogleFonts.arima(fontSize: 50,color: Colors.red),'O número gerado foi: $numero'),
//             Text(style: GoogleFonts.arima(), 'O botão foi pressionado  $quantidadeCliques vezes' ),
           
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(10),
//                     color: Colors.amber,
//                     child: Text('X1')
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(10),
//                     color: Colors.redAccent,
//                     child: Text('X2')
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(10),
//                     color: Colors.blueAccent,
//                     child: Text('X3')
//                   ),
//                 ),
//               ],)
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.recycling),
//           onPressed: () {
//             setState(() {
//               quantidadeCliques+=1;
//               numero = GeradorDeNumeroAleatorio.gerarNumeroAleatorio(20);
//             });
//           }),
//     );
//   }
// }
