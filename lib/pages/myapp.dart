import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          textTheme: GoogleFonts.robotoCondensedTextTheme(),
          canvasColor: const Color.fromARGB(255, 115, 174, 200),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 115, 174, 200))),
      home: const LoginPage(),
    );
  }
}