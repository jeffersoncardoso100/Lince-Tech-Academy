
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/task_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  bool opacity = true;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        // leading: Icon(Icons.hide_source_rounded),
        title: const Center(
          child: Text(
            "Tarefas",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: AnimatedOpacity(
        opacity: widget.opacity ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: [
            Column(
              children: const [
                Task(
                  dificulty: 4,
                  img: ('assets/images/flutter_study.jpg'),
                  tarefa: 'Estudar Flutter',
                ),
                Task(
                  dificulty: 3,
                  img: ('assets/images/workout.jpg'),
                  tarefa: 'Treinar',
                ),
                Task(
                  dificulty: 1,
                  img: ('assets/images/drink.jpg'),
                  tarefa: 'Tomar um Drink',
                ),
                Task(
                  dificulty: 5,
                  img: ('assets/images/eat_healthy.jpg'),
                  tarefa: 'Comer',
                ),
                Task(
                    tarefa: 'Jogar',
                    img: ('assets/images/video_game.jpg'),
                    dificulty: 2),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: (widget.opacity == true) ? Colors.white : Colors.black,
        backgroundColor: (widget.opacity == false) ? Colors.white : Colors.black,
        // backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          setState(() {
            widget.opacity = !widget.opacity;
          });
        },
        child: (widget.opacity == true)
            ? const FaIcon(FontAwesomeIcons.eyeSlash)
            : const FaIcon(FontAwesomeIcons.solidEye),
      ),
    );
  }
}