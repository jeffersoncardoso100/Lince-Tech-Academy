import 'dart:ffi';

import 'package:alura_flutter_curso_1/screens/form_screen.dart';
import 'package:alura_flutter_curso_1/screens/tela_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  // This widget is the root of your application.
  bool opacidade = true;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nova Tarefa'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 760,
              width: 385,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(11),
                border: Border.all(width: 3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (String? value){
                        if(value != null && value.isEmpty){
                          return 'Insira o nome da Tarefa';
                        }
                        return null;

                      },
                      controller: nomeController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nome',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value){
                        if (value!.isEmpty || int.parse(value) >5|| int.parse(value)<1){
                          return'Insira uma Dificuldade entre 1 e 5';
                        }
                          return null;

                      } ,
                      keyboardType: TextInputType.number,
                      controller: difficultyController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Dificuldade',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (text){
                        setState((){
                      });
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Insira um URL de Imagem';
                        }

                      },
                      keyboardType: TextInputType.url,
                      controller: imageController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Imagem',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 72,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade400,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.orange)
                    ),
                   child: ClipRRect (
                     borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        imageController.text,
                      errorBuilder: (BuildContext context,Object exception,StackTrace? stackTrace){
                    return Image.asset('assets/images/nophoto.png');
                    },
                      fit: BoxFit.cover,
                    ),
                   ),
                      ),


                  ElevatedButton(
                    onPressed: () {
                      print(nomeController.text);
                      print(difficultyController.text);
                      print(imageController.text);
                    },
                    child: Text('Adicionar'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
