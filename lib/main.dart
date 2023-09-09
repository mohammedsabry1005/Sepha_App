import 'package:flutter/material.dart';
import 'package:sepha_screen/sepha_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "Sepha App",
       home: Sephascreen(),

     );
   }
}