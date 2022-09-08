import 'dart:io';

import 'package:app6/pages/scanresult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanCodePage extends StatefulWidget {
  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? barcode;
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              buildQrView(context),
              Positioned(bottom: 18, child: buildresult()),
            ],
          ),
        ),
      );
  Widget buildresult() => Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        child: Text(
            barcode != null ? 'result: ${barcode!.code}' : 'scan a QR code.'),
      );

  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
            borderColor: Color(0xff4D8D6E),
            borderRadius: 10,
            borderLength: 20,
            borderWidth: 10,
            cutOutSize: MediaQuery.of(context).size.width * 0.8),
      );
  bool validqr = false;
  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) async {
      setState(() {
        this.barcode = barcode;
        if (validqr) {
          return;
        }
        validqr = true;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ScanResult(barcode.code),
          ),
        );
      });
    });
    // validqr = false;
  }
}
