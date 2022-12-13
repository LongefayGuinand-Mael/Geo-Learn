import 'package:GeoLearn/UI/CustomWidgets/HeroDialog.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QRDisplayPopUp.dart';
import 'package:flutter/material.dart';

class QuizzCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz Creation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              HeroDialogRoute(
                builder: (context) => Center(
                  child: QRDisplayPopUp(
                    QRValue: "",
                  ),
                ),
              ),
            );
          },
          child: const Text('QR Display'),
        ),
      ),
    );
  }
}
