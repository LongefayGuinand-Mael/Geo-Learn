import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class QRDisplayPopUp extends StatefulWidget {
  String QRValue;
  QRDisplayPopUp({
    super.key,
    required this.QRValue,
  });

  @override
  State<QRDisplayPopUp> createState() => _QRDisplayPopUpState();
}

class _QRDisplayPopUpState extends State<QRDisplayPopUp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Hero(
          tag: "",
          child: Material(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width / 24)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: PrettyQr(
                      image: AssetImage(
                        'assets/images/logos/GreenLogoGeoLearn.png',
                      ),
                      size: MediaQuery.of(context).size.width * 0.775,
                      data: 'https://www.google.fr',
                      errorCorrectLevel: QrErrorCorrectLevel.H,
                      typeNumber: null,
                      roundEdges: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
