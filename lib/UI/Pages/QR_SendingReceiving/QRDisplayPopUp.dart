import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class QRDisplayPopUp extends StatefulWidget {
  String qrValue;
  QRDisplayPopUp({
    super.key,
    required this.qrValue,
  });

  @override
  State<QRDisplayPopUp> createState() => _QRDisplayPopUpState();
}

class _QRDisplayPopUpState extends State<QRDisplayPopUp> {
  @override
  Widget build(BuildContext context) {
    String qrValue = widget.qrValue;
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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: PrettyQr(
                      image: const AssetImage(
                        'assets/images/logos/GreenLogoGeoLearn.png',
                      ),
                      size: MediaQuery.of(context).size.width * 0.75,
                      data: qrValue,
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
