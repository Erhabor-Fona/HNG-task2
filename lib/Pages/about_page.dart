import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('How to use', style: TextStyle(color: Colors.white60),),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('On the home page touch the emoji, select your option, after which you touch the check sign on the app bar to confirm your selection',
          style: TextStyle(fontSize: 18.0),),
        ),
      ),
    );
  }
}
