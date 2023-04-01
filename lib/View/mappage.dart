// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:app6/View/splash_screen.dart';
import 'package:app6/widgets/appbar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  int currentIndex = 0;
  double zoom = 0.12;
  bool? press;
  bool showPath = false;
  bool showScannerIntro = false;
  bool showScanner = false;
  bool showResult = false;
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? barcode;
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //        BODY
      body: !showScannerIntro
          ? Stack(
              children: [
                InkWell(
                  onTap: () {
                    AwesomeDialog(
                      padding: EdgeInsets.zero,
                      isDense: true,
                      dialogType: DialogType.NO_HEADER,
                      alignment: Alignment.lerp(
                          Alignment.center, Alignment.bottomCenter, 0.73)!,
                      context: context,
                      body: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 304.h,
                        width: 414.w,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.recycling,
                                    color: Color(0xff4D8D6E),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Recycling Point',
                                      style: TextStyle(
                                        fontSize: 21.sp,
                                        color: const Color(0xff4D8D6E),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon: const Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        color: const Color(0xff4D8D6E),
                                      ),
                                    ),
                                    height: 66.h,
                                    width: 162.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/distance.png',
                                          height: 28.h,
                                          width: 30.w,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: '3.5 ',
                                            style: TextStyle(
                                                fontSize: 26.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                text: "km \n",
                                                style: TextStyle(
                                                    fontSize: 17.sp,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const TextSpan(
                                                  text: 'Distance',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        color: const Color(0xff4D8D6E),
                                      ),
                                    ),
                                    height: 66.h,
                                    width: 162.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.watch_later_outlined,
                                          color: const Color(0xff4D8D6E),
                                          size: 30.sp,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: '5 ',
                                            style: TextStyle(
                                                fontSize: 29.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                text: "min \n",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const TextSpan(
                                                  text: 'Estimate Time',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: const Color(0xff4D8D6E),
                                  ),
                                ),
                                height: 48.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Color(0xff4D8D6E),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Tarkiln Hill Ave.Bronx, NY 10466',
                                      style: TextStyle(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      backgroundColor: Colors.white,
                                      minimumSize: Size(164.w, 56.h),
                                      side: const BorderSide(
                                          color: Color(0xFF4D8D6E), width: 2),
                                    ),
                                    child: const Text(
                                      'Learn more',
                                      style: TextStyle(
                                          color: Color(0xFF4D8D6E),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const StadiumBorder(),
                                        backgroundColor:
                                            const Color(0xFF4D8D6E),
                                        minimumSize: Size(164.w, 56.h),
                                        side: const BorderSide(
                                            color: Colors.white, width: 2),
                                      ),
                                      child: Row(
                                        children: [
                                          Transform.rotate(
                                              angle: 0.6,
                                              child: const Icon(
                                                  Icons.navigation_rounded)),
                                          const Text(
                                            'Navigate',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ],
                              )
                            ]),
                      ),
                      onDismissCallback: (type) {
                        // AwesomeDialog(context: context);
                      },
                    ).show().then((value) async {
                      await AwesomeDialog(
                        autoHide: const Duration(seconds: 2),
                        // dialogBackgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        alignment: Alignment.lerp(
                            Alignment.center, Alignment.topCenter, 0.88)!,
                        isDense: true,

                        dialogType: DialogType.NO_HEADER,
                        context: context,
                        body: Container(
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(85.r),
                              ),
                          height: 115.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: const Color(0xff4D8D6E),
                                        size: 28.sp,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Financial District',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Text("   |"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                        size: 28.sp,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Baxter St',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 85.w,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff4D8D6E),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '5',
                                      style: TextStyle(
                                        fontSize: 32.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '%\n Reached',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).show();
                      await AwesomeDialog(
                        barrierColor: Colors.transparent,
                        autoHide: const Duration(seconds: 2),
                        padding: EdgeInsets.zero,

                        // dialogBackgroundColor: Colors.transparent,
                        alignment: Alignment.lerp(
                            Alignment.center, Alignment.bottomCenter, 0.88)!,
                        isDense: true,
                        // ignore: deprecated_member_use
                        dialogType: DialogType.NO_HEADER,
                        context: context,
                        body: SizedBox(
                          width: 378.w,
                          height: 90.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "8 ",
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                      text: 'km\n',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: 'Distance',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "15 ",
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                      text: 'min\n',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: 'Arrival time',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.more_vert),
                              Container(
                                height: 70.h,
                                width: 70.h,
                                decoration: const BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.directions_car,
                                  color: Colors.white,
                                  size: 33.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ).show();
                      AwesomeDialog(
                        barrierColor: Colors.transparent,
                        autoHide: const Duration(seconds: 2),
                        padding: EdgeInsets.zero,

                        // dialogBackgroundColor: Colors.transparent,
                        alignment: Alignment.lerp(
                            Alignment.center, Alignment.topCenter, 0.5)!,
                        isDense: true,
                        dialogType: DialogType.NO_HEADER,
                        context: context,
                        body: Container(
                          margin: EdgeInsets.zero,
                          color: Colors.white,
                          height: 430.h,
                          width: 378.w,
                          child: Column(
                            children: [
                              Container(
                                // margin: EdgeInsets.only(bottom: portrait ? 80.h : 10.h),
                                decoration: const BoxDecoration(
                                  color: Color(0xff5D977B),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(80),
                                  ),
                                ),
                                height: 146.h,
                                width: 378.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Congratulation',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Image(
                                      image: AssetImage(
                                          'assets/images/cartoon.png'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                "You have successfully reached your\ndestination at a waste recycling point.",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w300),
                                // textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text(
                                "To stimulate your recycling activity\nyou will rcerive Wasty Coins that you\ncan use as a discount to our partners.",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 213, 237, 204),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 72.h,
                                width: 188.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 17.r,
                                      backgroundColor: const Color(0xff4D8D6E),
                                      foregroundColor: Colors.white,
                                      child: Text(
                                        'W',
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationThickness: 2),
                                      ),
                                    ),
                                    Text(
                                      '+ 56',
                                      style: TextStyle(
                                          color: const Color(0xff4D8D6E),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 31.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).show();
                    });
                    setState(() {
                      showPath = true;
                    });
                  },
                  child: PhotoView(
                      initialScale: zoom,
                      backgroundDecoration:
                          const BoxDecoration(color: Colors.white),
                      minScale: 0.12,
                      maxScale: 0.3,
                      imageProvider: const AssetImage(
                        'assets/images/map2.png',
                      )),
                ),
                Positioned(
                    top: 260.h,
                    left: 121.w,
                    child: showPath
                        ? Image.asset(
                            'assets/images/path.png',
                            width: 120.w,
                            height: 178.h,
                          )
                        : Container()),
                // //    SCANNER ON THE BOTTOMRIGHT OF MAP
                Positioned(
                  bottom: 40.h,
                  right: 22.w,
                  child: ScannerButton(),
                ),
                // //    ZOOM AND SETTING BUTTON ON THE BOTTOMLEFT OF MAP
                Positioned(
                  bottom: 40.h,
                  left: 24.w,
                  child: ZoomButtons(context.portrait),
                ),
              ],
            )
          : !showScanner
              ? SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20.h,
                        left: 0,
                        right: 0,
                        child: Image(
                          image:
                              const AssetImage('assets/images/topwelcome.png'),
                          height: 210.h,
                        ),
                      ),
                      Positioned(
                        top: 0.h,
                        right: 20.w,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              showResult = false;
                              showScannerIntro = false;
                            });
                          },
                          icon: const Icon(Icons.cancel_outlined),
                          iconSize: 30.sp,
                        ),
                      ),
                      Positioned(
                        bottom: 0.h,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 440.h,
                          padding: EdgeInsets.symmetric(horizontal: 140.w),
                          decoration: BoxDecoration(
                            color: const Color(0xff4D8D6E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                            ),
                          ),
                          // child:
                        ),
                      ),
                      Positioned(
                        bottom: 360.h,
                        left: 0.w,
                        right: 0.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            "Scan a product package for detailed structure information and proper recycling location.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 140.h,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          height: 180.h,
                          child: const Image(
                            image: AssetImage('assets/images/qrcode.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 50.h,
                        right: 0,
                        left: 0,
                        child: Center(
                            child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showScanner = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            minimumSize: Size(358.w, 56.h),
                          ),
                          child: const Text(
                            'I Got it!',
                            style: TextStyle(
                                color: Color(0xff4D8D6E),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    ],
                  ),
                )
              : !showResult
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        buildQrView(context),
                        Positioned(bottom: 18, child: buildresult()),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          width: double.infinity,
                          height: 305.h,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/bag.png'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Resuable Canvas Bag",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.sp),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text(
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.',
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  circle(45, 'Cotton'),
                                  circle(35, 'Polyester'),
                                  circle(25, 'Lycra'),
                                ],
                              ),
                              SizedBox(
                                height: 38.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        showResult = false;
                                        showScanner = false;
                                        showScannerIntro = false;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      backgroundColor: Colors.white,
                                      minimumSize: Size(170.w, 56.h),
                                      side: const BorderSide(
                                          color: Color(0xFF4D8D6E), width: 2),
                                    ),
                                    child: const Text(
                                      'Close',
                                      style: TextStyle(
                                          color: Color(0xFF4D8D6E),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          showResult = false;
                                          showScanner = false;
                                          showScannerIntro = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const StadiumBorder(),
                                        backgroundColor:
                                            const Color(0xFF4D8D6E),
                                        minimumSize: Size(170.w, 56.h),
                                        side: const BorderSide(
                                            color: Colors.white, width: 2),
                                      ),
                                      child: Row(
                                        children: [
                                          Transform.rotate(
                                              angle: 0.6,
                                              child: const Icon(
                                                  Icons.navigation_rounded)),
                                          const Text(
                                            'Navigate',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
    );
  }

  Widget ScannerButton() {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      height: 86.h,
      width: 86.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xff4D8D6E),
          width: 2,
        ),
        color: Colors.transparent,
      ),
      child: CircleAvatar(
        backgroundColor: const Color(0xff4D8D6E),
        child: IconButton(
          onPressed: () {
            // Navigator.of(context).pushNamed('/scanpage');
            setState(() {
              showScannerIntro = true;
            });
          },
          iconSize: 40.sp,
          alignment: Alignment.center,
          padding: EdgeInsets.zero,
          color: Colors.white,
          icon: const Icon(
            Icons.center_focus_strong_outlined,
          ),
        ),
      ),
    );
  }

  Widget ZoomButtons(bool portrait) {
    return Column(
      children: [
        Container(
          height: 47.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: const Color(0xff4D8D6E),
              borderRadius: BorderRadius.circular(13)),
          child: IconButton(
              color: Colors.white,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(Icons.tune)),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          height: 48.h,
          width: 50.w,
          decoration: const BoxDecoration(
              color: Color(0xff4D8D6E),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13), topRight: Radius.circular(13))),
          child: IconButton(
              color: Colors.white,
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  zoom += 0.05;
                });
              },
              icon: const Icon(Icons.add)),
        ),
        SizedBox(height: 8.h),
        Container(
          height: 48.h,
          width: 50.w,
          decoration: const BoxDecoration(
              color: Color(0xff4D8D6E),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13))),
          child: IconButton(
              color: Colors.white,
              padding: EdgeInsets.only(bottom: 80.h),
              onPressed: () {
                setState(() {
                  zoom -= 0.05;
                });
              },
              icon: const Icon(Icons.minimize)),
        ),
      ],
    );
  }

  Widget circle(int percent, String label) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.all(3),
          height: 80.h,
          width: 80.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xffE9BD60),
              width: 1,
            ),
            color: Colors.transparent,
          ),
          child: CircleAvatar(
            child: Text(
              '$percent\n %',
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color(0xffE9BD60),
          ),
        ),
        Text(
          label,
          style: TextStyle(color: const Color(0xffE9BD60), fontSize: 18.sp),
        ),
      ],
    );
  }

  Widget buildresult() => Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white70,
        ),
        child: Text(
            barcode != null ? 'result: ${barcode!.code}' : 'scan a QR code.'),
      );

  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
            borderColor: const Color(0xff4D8D6E),
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
        showResult = true;
      });
    });
    // validqr = false;
  }
}
