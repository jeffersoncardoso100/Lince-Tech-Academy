import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget buildTextField(String label) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.white38,
          filled: true,
          labelText: label,
          labelStyle: TextStyle(color: Colors.black45, fontSize: 30.0),
          border: OutlineInputBorder()),
      style: TextStyle(color: Colors.lightGreen, fontSize: 25.0),
      keyboardType: TextInputType.number,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("Calculadora IMC"),
            centerTitle: true,
            actions: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {},
                ),
              )
            ]),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.person_pin,
                size: 200.0,
                color: Colors.lightGreen,
              ),
              buildTextField('Reais'),
              Divider(),
              buildTextField('Altura'),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(8, 8))
                    ]),
                child: RaisedButton(
                  child: Text(
                    "Verificar",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  onPressed: () {},
                  color: Colors.lightGreen,
                ),
              )
            ],
          ),
        ));
  }
}
