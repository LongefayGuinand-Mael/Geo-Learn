import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

class QRScanningPage extends StatefulWidget {
  const QRScanningPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRScanningPageState();
}

class _QRScanningPageState extends State<QRScanningPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Scanner'),
        actions: [
          ElevatedButton(
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
                  return const Icon(Icons.error_outline, color: Colors.black);
                }
              },
            ),
          ),
          ElevatedButton(
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
                  // return Text('Camera facing ${describeEnum(snapshot.data!)}');
                } else {
                  return const Text('loading');
                }
              },
            ),
          ),
        ],
      ),
      body: _buildQrView(context),
      // Column(
      //   children: <Widget>[
      //     Expanded(
      //       flex: 4,
      //       child: _buildQrView(context),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: FittedBox(
      //         fit: BoxFit.contain,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: <Widget>[
      //             if (result != null)
      //               Text(
      //                 '${result!.code}',
      //               )
      //             else
      //               const Text(""),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
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
          },
        );
      },
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('Date: ${DateTime.now().toIso8601String()} => _onPermissionSet $p');
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

// class QRSanningPage extends StatelessWidget {
//   MobileScannerController cameraController = MobileScannerController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mobile Scanner'),
//         actions: [
//           IconButton(
//             color: Colors.white,
//             icon: ValueListenableBuilder(
//               valueListenable: cameraController.torchState,
//               builder: (context, state, child) {
//                 switch (state as TorchState) {
//                   case TorchState.off:
//                     return const Icon(Icons.flash_off, color: Colors.grey);
//                   case TorchState.on:
//                     return const Icon(Icons.flash_on, color: Colors.yellow);
//                 }
//               },
//             ),
//             iconSize: 32.0,
//             onPressed: () => cameraController.toggleTorch(),
//           ),
//           IconButton(
//             color: Colors.white,
//             icon: ValueListenableBuilder(
//               valueListenable: cameraController.cameraFacingState,
//               builder: (context, state, child) {
//                 switch (state as CameraFacing) {
//                   case CameraFacing.front:
//                     return const Icon(Icons.camera_front);
//                   case CameraFacing.back:
//                     return const Icon(Icons.camera_rear);
//                 }
//               },
//             ),
//             iconSize: 32.0,
//             onPressed: () => cameraController.switchCamera(),
//           ),
//         ],
//       ),
//       body: MobileScanner(
//         controller: cameraController,
//         onDetect: (barcode, args) {
//           if (barcode.rawValue == null) {
//             print('Failed to scan Barcode');
//           } else {
//             final String code = barcode.rawValue!;
//             print('Barcode found! $code');
//           }
//         },
//       ),
//     );
//   }
// }
