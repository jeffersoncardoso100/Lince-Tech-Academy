import 'dart:collection';
main(){
  var cartas = new Queue<String>();
  cartas.add("♧ paus");
  cartas.add("♡ copas");
  cartas.add("♤ espada");
  cartas.add("♢ ouros");


    for(int i=0;i< cartas.length;){
    print(cartas);
    cartas.removeLast();
  }

}
