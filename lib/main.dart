import 'package:GeoLearn/UI/Pages/HomePage.dart';
import 'package:GeoLearn/UI/Pages/LearnPage.dart';
import 'package:GeoLearn/UI/Pages/MapsPage.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QRScanningPage.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QuizzCreationPage.dart';
import 'package:GeoLearn/UI/Pages/Quizz/QuizzPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoLearn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF4B9589),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/quizz': (context) => QuizzPage(),
        '/learn': (context) => LearnPage(),
        '/maps': (context) => MapsPage(),
        '/quizz_creation': (context) => QuizzCreationPage(),
        '/quizz_receiving': (context) => QRScanningPage(),
      },
    );
  }
}
