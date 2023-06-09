import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:input_form/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          fontFamily: GoogleFonts.roboto().fontFamily),
      home: const LoginView2(),
    );
  }
}
