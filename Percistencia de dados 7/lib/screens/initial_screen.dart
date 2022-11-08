import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/data/task_inherid.dart';
import 'package:nosso_primeiro_projeto/screens/form_screen.dart';

import '../components/task.dart';
import '../data/tak_dao.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          IconButton(onPressed: (){ setState((){});}, icon: Icon(Icons.refresh) )
        ],
        title: const Text('Tarefas'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 70),
        child: FutureBuilder<List<Task>>(
            future: TaskDao().findALL(),
            builder: (context, snapshot) {
              List<Task>? items = snapshot.data;
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                    child: Column(
                      children: [
                        const CircularProgressIndicator(),
                        const Text('carregando'),
                      ],
                    ),
                  );

                  break;
                case ConnectionState.waiting:
                  return Center(
                    child: Column(
                      children: [
                        const CircularProgressIndicator(),
                        const Text('carregando'),
                      ],
                    ),
                  );
                  break;
                case ConnectionState.active:
                  return Center(
                    child: Column(
                      children: [
                        const CircularProgressIndicator(),
                        const Text('carregando'),
                      ],
                    ),
                  );
                  break;
                case ConnectionState.done:
                  if (snapshot.hasData && items != null) {
                    if (items.isNotEmpty) {
                      return ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Task tarefa = items[index];
                            return tarefa;
                          });
                    }
                    return Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 128,
                          ),
                          const Text(
                            'Não há nenhuma Tarefa',
                            style: TextStyle(fontSize: 32),
                          )
                        ],
                      ),
                    );
                  }

                  return const Text('Erro ao carregar Tarefas');
                  break;
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (contextNew) => FormScreen(
                        taskContext: context,
                      ),),).then((value) => setState(() {
                print('Recarregando a tela inicial');
              }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
