import 'package:app6/View/signup_screen.dart';
import 'package:app6/View/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension MediaQueryValues on BuildContext {
  bool get portrait => MediaQuery.of(this).orientation == Orientation.portrait;
}

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Welcome.png'),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            bottom: 273.h,
            right: 38.w,
            left: 38.w,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SignInScreen(screenIndex: 1),
                ));
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: const Color(0xFF4D8D6E),
                minimumSize: Size(338.w, 56.h),
                side: const BorderSide(color: Colors.white, width: 2),
              ),
              child: const Text(
                'Get Started',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 183.h,
            right: 38.w,
            left: 38.w,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SignInScreen(screenIndex: 0),
                ));
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.white,
                minimumSize: Size(338.w, 56.h),
                side: const BorderSide(color: Color(0xFF4D8D6E), width: 2),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Color(0xFF4D8D6E), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
