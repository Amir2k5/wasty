import 'package:app6/View/blog_screen.dart';
import 'package:app6/View/mappage.dart';
import 'package:app6/View/request_screen.dart';
import 'package:app6/View/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      MapPage(),
      BlogScreen(),
      StoreScreen(),
      RequestScreen()
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: appbar(),
      body: IndexedStack(
        children: screens,
        index: currentIndex,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 70.h,
        selectedIndex: currentIndex,
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.map_outlined,
              ),
              label: 'map'),
          NavigationDestination(icon: Icon(Icons.newspaper), label: 'blog'),
          NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined), label: 'store'),
          NavigationDestination(
              icon: Icon(Icons.campaign_outlined), label: 'request'),
        ],
      ),
    );
  }
}
