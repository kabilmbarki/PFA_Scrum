import 'package:flutter/material.dart';
import 'agentList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 250,
              height: 150,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // if one or more languages are selected:
        //body: agentList(),
      ),
    );
  }
}