import 'package:app6/models/accdata.dart';
import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/button.dart';
import 'package:app6/widgets/divider.dart';
import 'package:app6/widgets/header.dart';
import 'package:app6/widgets/redirects.dart';
import 'package:app6/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  List<AccountData> users;
  SignUp(this.users);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();

  final password = TextEditingController();
  final confirm = TextEditingController();

//   function to store new accounts
  void storeAcc() {
    if (email.text.isEmpty || password.text.isEmpty || confirm.text.isEmpty) {
      return;
    } else {
      final newuser = AccountData(email.text, password.text);
      password.text == confirm.text
          ? {
              setState(() {
                widget.users.add(newuser);
              }),
              Navigator.pushNamed(context, '/loginpage')
            }
          : print('password dont match');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //      PAGE HEADER
            pageheader(context.portrait),
            //      TEXT BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                txbutton(
                    button: 'Login',
                    color: Color(0xff4D8D6E),
                    portrait: context.portrait,
                    border: Color.fromARGB(255, 197, 197, 197),
                    size: context.portrait ? 70 : 35,
                    ctx: context,
                    login: true),
                txbutton(
                  button: 'Get Started',
                  color: Color(0xff4D8D6E),
                  portrait: context.portrait,
                  border: Color(0xff4D8D6E),
                  size: context.portrait ? 70 : 35,
                  ctx: context,
                  login: false,
                ),
              ],
            ),
            //   SECOND HEADER ABOVE TEXT FIELD
            Container(
              height: context.portrait ? 2200.h : 3600.h,
              padding: EdgeInsets.only(top: 80.h, left: 110.w, right: 110.w),
              color: Color.fromARGB(253, 235, 235, 235),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 0, top: 10.h),
                    child: Text(
                      'Become part of the future.',
                      style: TextStyle(
                          fontSize: context.portrait ? 90.sp : 45.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  //      TEXT FIELD FOR EMAIL
                  txfield('Email', Icons.mail_outline, Colors.grey, Colors.grey,
                      context.portrait, false, email),
                  SizedBox(
                    height: 30.h,
                  ),
                  //      TEXT FIELD FOR Create PASSWORD
                  txfield('Creat Password', Icons.lock_outline, Colors.grey,
                      Colors.grey, context.portrait, true, password,
                      icon2: Icons.remove_red_eye),
                  SizedBox(
                    height: 30.h,
                  ),
                  //       TEXT FIELD FOR CONFIRMING PASSWORD
                  txfield('Repeat Password', Icons.lock_outline, Colors.grey,
                      Colors.grey, context.portrait, true, confirm,
                      icon2: Icons.remove_red_eye),
                  SizedBox(
                    height: context.portrait ? 40.h : 0.h,
                  ),

                  //         LOGIN BUTTON
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.w),
                    child: button(
                      'Sign Up',
                      context.portrait,
                      Color(0xff4D8D6E),
                      context.portrait
                          ? Size(1100.w, 200.h)
                          : Size(1100.w, 320.h),
                      context,
                      page: '/loginpage',
                      border: Colors.white,
                      function: storeAcc,
                    ),
                  ),

                  //  buttons for terms of use and policy below sign up button


                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0.h),
                          child: Text(
                            'By creating an account, you agree to Wasty',
                            style: TextStyle(
                                fontSize: context.portrait ? 50.sp : 30.sp),
                          ),
                        ),
                        SizedBox(
                          height: context.portrait ? 130.h : 290.h,
                          width: context.portrait ? 870.w : 550.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              txbutton(
                                button: 'Terms of use',
                                color: Color(0xff4D8D6E),
                                portrait: context.portrait,
                                border: Colors.transparent,
                                size: context.portrait ? 170.sp : 70.sp,
                                ctx: context,
                              ),
                              Text('and'),
                              txbutton(
                                button: 'Privacy policy.',
                                color: Color(0xff4D8D6E),
                                portrait: context.portrait,
                                border: Colors.transparent,
                                size: context.portrait ? 170.sp : 70.sp,
                                ctx: context,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.portrait ? 50.h : 10.h,
                  ),
                  //          DIVIDER BETWEEN BETWEEN LOGIN AND REDIRECTS
                  divider(),
                  SizedBox(height: context.portrait ? 80.h : 10.h),
                  Container(
                    height: context.portrait ? 400.h : 670.h,
                    width: 1200.w,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: redirects('assets/images/google.png', 'Google',
                              120.h, 170.w, context.portrait),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: redirects('assets/images/apple.png', 'Apple',
                              120.h, 170.w, context.portrait),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: redirects('assets/images/twitter.png',
                              'Twitter', 110.h, 120.w, context.portrait),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: redirects('assets/images/facebook.png',
                              'Facebook', 130.h, 150.w, context.portrait),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
