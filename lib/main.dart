import 'package:GeoLearn/UI/Pages/HomePage.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QRScanningPage.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QuizzCreationPage.dart';
import 'package:GeoLearn/UI/Pages/Quizz/QuizzPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
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
        '/quizz': (context) => const QuizzPage(
              firestoreID: "",
            ),
        // '/learn': (context) => LearnPage(),
        '/quizz_creation': (context) => const QuizzCreationPage(),
        '/quizz_receiving': (context) => const QRScanningPage(),
      },
    );
  }
}
