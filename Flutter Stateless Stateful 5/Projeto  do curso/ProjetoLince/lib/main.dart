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
      home: Stack(
        //alinhamento da tela
        alignment: AlignmentDirectional.center,

        // ele é meu widet
        children: [

          Container(height: 300, width: 300, color: Colors.black),
          Container(height: 150, width: 150, color: Colors.red),
          Container(height: 75, width: 75, color: Colors.blue),
          Container(height: 37, width: 37, color: Colors.yellow),

        ],
      ) ,
    );
  }
}
