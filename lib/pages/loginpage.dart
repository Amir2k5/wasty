import 'package:app6/models/accdata.dart';
import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/button.dart';
import 'package:app6/widgets/divider.dart';
import 'package:app6/widgets/header.dart';
import 'package:app6/widgets/redirects.dart';
import 'package:app6/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();
  List<AccountData> users;
  LoginPage(this.users);
  void checkacc(BuildContext context){
    for (var i = 0; i < users.length; i++) {
      if (email.text.isEmpty||password.text.isEmpty) {
      return;
    }else{
      if (email.text==users[i].email&&password.text==users[i].password) {
        Navigator.pushNamed(context, '/mappage');
      }
      else{print('email and password dont match');}
    }
    }
    
  }
  @override
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
                    border: Color(0xff4D8D6E),
                    size: context.portrait ? 70 : 35,
                    ctx: context,
                    login: true),
                txbutton(
                    button: 'Get Started',
                    color: Color(0xff4D8D6E),
                    portrait: context.portrait,
                    border: Color.fromARGB(255, 197, 197, 197),
                    size: context.portrait ? 70 : 35,
                    ctx: context,
                    login: false),
              ],
            ),
            Container(
              height: context.portrait ? 2200.h : 3200.h,
              padding: EdgeInsets.only(top: 80.h, left: 110.w, right: 110.w),
              color: Color.fromARGB(253, 235, 235, 235),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login in your account.',
                    style: TextStyle(
                        fontSize: context.portrait ? 90.sp : 45.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  //      TEXT FIELD FOR EMAIL
                  txfield('Email', Icons.mail_outline, Colors.grey, Colors.grey,
                      context.portrait, false, email),
                  SizedBox(
                    height: 50.h,
                  ),
                  //      TEXT FIELD FOR PASSWORD
                  txfield('Password', Icons.lock_outline, Colors.grey,
                      Colors.grey, context.portrait, true, password,
                      icon2: Icons.remove_red_eye),
                  SizedBox(
                    height: context.portrait ? 20.h : 0.h,
                  ),
                  //      BUTTON FOR FORGET PASSWORD
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.zero,
                    child: SizedBox(
                      height: context.portrait ? 140.h : 280.h,
                      width: context.portrait ? 500.w : 320.w,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: context.portrait ? 50.sp : 30.sp),
                        ),
                      ),
                    ),
                  ),
                  //         LOGIN BUTTON
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.w),
                    child: button(
                        'Login',
                        context.portrait,
                        Color(0xff4D8D6E),
                        context.portrait
                            ? Size(1100.w, 200.h)
                            : Size(1100.w, 320.h),
                        context,
                        page: '/mappage',
                        border: Colors.white,
                        function: checkacc,
                        ),
                  ),
                  SizedBox(
                    height: 130.h,
                  ),
                  //          DIVIDER BETWEEN BETWEEN LOGIN AND REDIRECTS
                  divider(),
                  SizedBox(height: 120.h),
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
