import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,textTheme: GoogleFonts.robotoCondensedTextTheme(),canvasColor: Colors.amber,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blueAccent)),
      home: const HomePage(),
    );
  }
}