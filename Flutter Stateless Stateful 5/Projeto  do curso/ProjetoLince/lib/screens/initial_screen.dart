import 'package:fgfhfh/Components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: Container(),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Tasks(
                  'Estudar Flutter',
                  'assets/images/fluter.png',
                  3),
            ),
            Tasks(
                'Andar de Bike',
                'assets/images/bike.jpg',
                2),
            Tasks(
                'Ler',
                'assets/images/ler.jpg',
                3),
            Tasks(
                'Meditar',
                'assets/images/meditar.jpeg',
                5),
            Tasks('Jogar',
                'assets/images/jogar.jpg', 1),
           SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
