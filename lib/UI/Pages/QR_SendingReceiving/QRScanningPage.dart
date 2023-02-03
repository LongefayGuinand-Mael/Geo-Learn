import 'package:GeoLearn/UI/Pages/Quizz/QuizzPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanningPage extends StatefulWidget {
  const QRScanningPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRScanningPageState();
}

class _QRScanningPageState extends State<QRScanningPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan for Receiving Quizz \nfrom an Other Phone'),
        actions: [
          // ===================== POUR DES TEST SUR PC =====================
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => const QuizzPage(
          //           firestoreID: "f58cf727-833d-4a6c-b3d1-035fc65e4a34",
          //         ),
          //       ),
          //     );
          //   },
          //   child: const Text(
          //     "Test-PC",
          //   ),
          // ),
          // ================================================================
          (result == null)
              ? ElevatedButton(
                  onPressed: () async {
                    await controller?.toggleFlash();
                    setState(() {});
                  },
                  child: FutureBuilder(
                    future: controller?.getFlashStatus(),
                    builder: (context, snapshot) {
                      if (snapshot.data == true) {
                        return const Icon(Icons.flash_on, color: Colors.yellow);
                      } else if (snapshot.data == false) {
                        return const Icon(Icons.flash_off, color: Colors.grey);
                      } else {
                        return const Icon(Icons.error_outline,
                            color: Colors.black);
                      }
                    },
                  ),
                )
              : const SizedBox(),
          (result == null)
              ? ElevatedButton(
                  onPressed: () async {
                    await controller?.flipCamera();
                    setState(() {});
                  },
                  child: FutureBuilder(
                    future: controller?.getCameraInfo(),
                    builder: (context, snapshot) {
                      if (snapshot.data != null) {
                        if (describeEnum(snapshot.data!) == "front") {
                          return const Icon(Icons.camera_front);
                        }
                        return const Icon(Icons.camera_rear);
                      } else {
                        return const Text('loading');
                      }
                    },
                  ),
                )
              : const SizedBox(),
        ],
      ),
      body: _buildQrView(context),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = MediaQuery.of(context).size.width * 0.75;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: const Color(0xFF4B9589),
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen(
      (scanData) {
        setState(
          () {
            result = scanData;
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => QuizzPage(
                  firestoreID: result!.code.toString(),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'No Permission',
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
