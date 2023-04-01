import 'package:flutter/material.dart';


class LearnMore extends StatelessWidget {
  const LearnMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Learn More'),centerTitle: true,), body: Center(child: Text('Learn More About Wasty Here')),);
  }
}