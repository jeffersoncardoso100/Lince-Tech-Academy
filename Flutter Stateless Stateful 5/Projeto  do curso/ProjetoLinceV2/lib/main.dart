


import 'package:flutter/material.dart';
import 'package:tarefas_trabalho/screen/main_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff3f5f7),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(
            secondary: Colors.lightBlueAccent, tertiary: Colors.blueGrey),
      ),
      home: MainScreen(),
    );
  }

}
