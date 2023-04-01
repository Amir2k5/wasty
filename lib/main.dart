import 'package:app6/View/homescreen.dart';
import 'package:app6/models/accdata.dart';
import 'package:app6/View/learnmorepage.dart';
import 'package:app6/View/signup_screen.dart';
import 'package:app6/View/mappage.dart';
import 'package:app6/View/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'View/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<AccountData> users = [];

    return ScreenUtilInit(
      designSize: Size(414, 896),
      rebuildFactor: (old, data) => RebuildFactors.size(old, data),
      builder: (context, child) => MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => SplashScreen(),
          '/homepage': (_) => HomeScreen(),
          '/loginpage': (_) => SignInScreen(screenIndex: 0),
          '/signuppage': (_) => SignInScreen(screenIndex: 1),
          '/mappage': (_) => MapPage(),
          '/learnmorepage': (_) => LearnMore(),
        },
      ),
    );
  }
}
