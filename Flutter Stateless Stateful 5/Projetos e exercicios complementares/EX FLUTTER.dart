import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.purpleAccent, width: 90, height: 90,
              ),
              Container(
                color: Colors.pinkAccent, width: 90, height: 90,
              ),
              Container(
                color: Colors.white, width: 90, height: 90,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.green, width: 90, height: 90,
              ),
              Container(
                color: Colors.cyanAccent, width: 90, height: 90,
              ),
              Container(
                color: Colors.cyan, width: 90, height: 90,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red, width: 90, height: 90,
              ),
              Container(
                color: Colors.amber, width: 90, height: 90,
              ),
              Container(
                color: Colors.yellow, width: 90, height: 90,
              ),

            ],
          ),
        ],
      ),
    );
  }
}