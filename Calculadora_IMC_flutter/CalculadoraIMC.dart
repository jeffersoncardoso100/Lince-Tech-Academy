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
  String infoText = 'Informe seus dados';
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  Widget buildTextField(String label, TextEditingController c) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.white38,
          filled: true,
          labelText: label,
          labelStyle: TextStyle(color: Colors.white54, fontSize: 30.0),
          border: OutlineInputBorder()),
      style: TextStyle(color: Colors.white, fontSize: 25.0),
      keyboardType: TextInputType.number,
      controller: c,
    );
  }

  void _resetFields() {
    setState(() {
      weightController.text = "";
      heightController.text = "";
      infoText = "Informe seus dados";
    });
  }

  void _calculate() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) / 100;
    double imc = weight / (height * height);
    setState(() {
      if (imc < 17) {
        infoText = "Muito abaixo do peso (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 17 && imc <= 18.49) {
        infoText = "Abaixo do peso (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 15.5 && imc <= 24.99) {
        infoText = "Peso ideal ou normal(${imc.toStringAsPrecision(4)})";
      } else if (imc >= 25 && imc <= 29.99) {
        infoText = "Acima do peso (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 30 && imc <= 34.99) {
        infoText = "Obesidade I (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 35 && imc <= 39.99) {
        infoText = "Obesidade II (severa) (${imc.toStringAsPrecision(4)})";
      } else if (imc > 40) {
        infoText = "Obesidade III (morbida) (${imc.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black26,
            title: Text("Calculadora IMC"),
            centerTitle: true,
            actions: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {
                    _resetFields();
                  },
                ),
              )
            ]),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black87,
                      blurRadius: 1000,
                      spreadRadius: 250,
                      offset: Offset(8, 8))
                ]),
                child: Icon(
                  Icons.person_pin,
                  size: 200.0,
                  color: Colors.orange,
                ),
              ),
              buildTextField('Peso', weightController),
              Divider(),
              buildTextField('Altura', heightController),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.white54,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 21,
                          spreadRadius: 2,
                          offset: Offset(4, 4))
                    ]),
                child: RaisedButton(
                  child: Text(
                    "Verificar",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  onPressed: () {
                    _calculate();
                  },
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Text(
                  infoText,
                  style:
                  TextStyle(color: Colors.deepOrange[400], fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}