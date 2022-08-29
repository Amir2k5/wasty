// import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
//    MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       builder: (context, widget) => ResponsiveWrapper.builder(
//         minWidth: 250,
//       maxWidth: 1700,
//       defaultScale:true,
//           ClampingScrollWrapper.builder(context, widget!),
//           breakpoints: [
//              ResponsiveBreakpoint.resize(250, name: MOBILE),
//              ResponsiveBreakpoint.autoScale(600, name: TABLET),
//              ResponsiveBreakpoint.resize(800, name: DESKTOP),
//              ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
//           ]),
//       home:  HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//    HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Container(
//         // margin: EdgeInsets.zero,
//         // padding: EdgeInsets.zero,
//         height: double.infinity,
//         width: double.infinity,
//         child: Stack(
          
//           children: [
//              Positioned(
//               bottom:210,
//               left: 0,
//               child: SizedBox(
//                 child: Image(
//                   alignment: Alignment.topCenter,
//                   image: AssetImage('assets/images/blob-2.png'),
//                   fit: BoxFit.cover,
//                   height: 700,
//                   width: 380,
//                 ),
//               ),
//             ),
//              Positioned(
//               top: 40,
//               left: 0,
//               child: SizedBox(
//                 child: Image(
//                   alignment: Alignment.topCenter,
//                   image: AssetImage('assets/images/Group 3482.png'),
//                   fit: BoxFit.cover,
//                   height: 200,
//                   width: 390,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 70,
//               left: 20,
//               child: Column(
//                 children:  [
//                   Text('WELCOME TO',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       )),
//                   Text('wasty.',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 30,
//                       )),
//                 ],
//               ),
//             ),
//              Positioned(
//               top: 130,
//               left: 15,
//               child: SizedBox(
//                 child: Image(
//                   image: AssetImage('assets/images/Group 3479.png'),
//                   fit: BoxFit.contain,
//                   height: 170,
//                   width: 300,
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 170,
//               left: 30,
              
//               child: ElevatedButton(
                
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   shape:  StadiumBorder(),
//                   primary:  Color(0xff4D8D6E),
//                   maximumSize:  Size(500, 50),
//                   minimumSize:  Size(300, 50),
//                 ),
//                 child:  Text('Get Started'),
//               ),
//             ),
//             Positioned(
//               bottom: 90,
//               left: 30,
              
//               child: ElevatedButton(
                
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   shape:  StadiumBorder(),
//                   minimumSize:  Size(300, 50),
//                   side: BorderSide(color: Color(0xff4D8D6E),width: 2),
//                   primary: Colors.white,
//                 ),
//                 child: Text('Login',style: TextStyle(color: Color(0xff4D8D6E),),),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
