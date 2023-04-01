import 'package:app6/View/homescreen.dart';
import 'package:app6/View/mappage.dart';
import 'package:app6/View/signup_screen.dart';
import 'package:app6/View/splash_screen.dart';
import 'package:app6/widgets/divider.dart';
import 'package:app6/widgets/redirects.dart';
import 'package:app6/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  final int screenIndex;
  // List<AccountData> users;
  SignInScreen({required this.screenIndex});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final email = TextEditingController();

  final password = TextEditingController();
  bool obscure = true;
  int selectedIndex = 0;

  List<Map> images = [
    {
      "Google": 'assets/images/google.png',
    },
    {
      "Apple": 'assets/images/apple.png',
    },
    {
      "Twitter": 'assets/images/twitter.png',
    },
    {
      "Facebook": 'assets/images/facebook.png',
    }
  ];
  @override
  void initState() {
    selectedIndex = widget.screenIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //      PAGE HEADER
            pageHeader(),
            //      TEXT BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                        height: 62.h,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: selectedIndex == 0
                                        ? const Color(0xff4D8D6E)
                                        : Colors.white,
                                    width: 2))),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: const Color(0xff4D8D6E),
                                fontSize: 16.sp),
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                        height: 62.h,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: selectedIndex == 1
                                        ? const Color(0xff4D8D6E)
                                        : Colors.white,
                                    width: 2))),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                color: const Color(0xff4D8D6E),
                                fontSize: 16.sp),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 25.h),
              child: Column(
                children: [
                  Visibility(
                    visible: selectedIndex == 0,
                    child: Column(
                      children: [
                        Text(
                          "Login in your account.",
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 104, 104, 104)),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        txfield(
                            "E-Mail", Icons.mail_outline, Colors.grey, email),
                        SizedBox(
                          height: 21.h,
                        ),
                        txfield("Password", Icons.lock_outline, Colors.grey,
                            password,
                            icon2: Icons.visibility_outlined, obscure: obscure),
                        SizedBox(
                          height: 29.h,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: const Color(0xff4D8D6E),
                            minimumSize: Size(338.w, 53.h),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp),
                          ),
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        divider(),
                        SizedBox(
                          height: 23.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: redirects(
                                    'assets/images/google.png', 'Google')),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                                child: redirects(
                                    'assets/images/apple.png', 'Apple'))
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: redirects(
                                    'assets/images/twitter.png', 'Twitter')),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                                child: redirects(
                                    'assets/images/facebook.png', 'Facebook'))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                      visible: selectedIndex == 1, child: SignUpScreen()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageHeader() {
    return Container(
      height: 183.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff4D8D6E), Color(0xff5FB288)],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft),
      ),
      width: double.infinity,
      padding: EdgeInsets.only(top: 70.h, left: 127.w, right: 111.w),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: "wasty. ",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 52.sp),
          children: [
            TextSpan(
              text: 'think for nature',
              style: TextStyle(fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
