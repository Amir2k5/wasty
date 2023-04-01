import 'package:app6/View/homescreen.dart';
import 'package:app6/View/splash_screen.dart';
import 'package:app6/widgets/divider.dart';
import 'package:app6/widgets/redirects.dart';
import 'package:app6/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final email = TextEditingController();

  final password = TextEditingController();
  final confirm = TextEditingController();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Become part of the future.",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 104, 104, 104)),
        ),
        SizedBox(
          height: 28.h,
        ),
        txfield("E-Mail", Icons.mail_outline, Colors.grey, email),
        SizedBox(
          height: 21.h,
        ),
        txfield("Create password", Icons.lock_outline, Colors.grey, password,
            icon2: Icons.visibility_outlined, obscure: obscure),
        SizedBox(
          height: 21.h,
        ),
        txfield("Repead password", Icons.lock_outline, Colors.grey, password,
            icon2: Icons.visibility_outlined, obscure: obscure),
        SizedBox(
          height: 40.h,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: const Color(0xff4D8D6E),
            minimumSize: Size(338.w, 53.h),
          ),
          child: Text(
            "Join in community",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 17.sp),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: "By creating an account, you agree to Wasty\n",
            style: TextStyle(
                color: Color.fromARGB(255, 104, 104, 104), fontSize: 13),
            children: [
              TextSpan(
                text: "Terms of Use ",
                style: TextStyle(
                  color: Color(0xff4D8D6E),
                ),
              ),
              TextSpan(
                text: "and ",
                style: TextStyle(
                  color: Color.fromARGB(255, 104, 104, 104),
                  fontSize: 13,
                ),
              ),
              TextSpan(
                text: "Privacy policy",
                style: TextStyle(
                  color: Color(
                    0xff4D8D6E,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        divider(),
        SizedBox(
          height: 23.h,
        ),
        Row(
          children: [
            Expanded(child: redirects('assets/images/google.png', 'Google')),
            SizedBox(
              width: 10.w,
            ),
            Expanded(child: redirects('assets/images/apple.png', 'Apple'))
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Expanded(child: redirects('assets/images/twitter.png', 'Twitter')),
            SizedBox(
              width: 10.w,
            ),
            Expanded(child: redirects('assets/images/facebook.png', 'Facebook'))
          ],
        ),
      ],
    );
  }
}
