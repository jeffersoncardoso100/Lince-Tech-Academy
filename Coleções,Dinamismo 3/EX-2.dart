import 'dart:collection';
main(){
  final carta = Queue<String>();
  carta.addFirst("♧ PAUS");
  carta.addFirst("♡ COPAS");
  carta.addFirst("♤ ESPADAS");
  carta.addFirst("♢ OUROS");


  for(int i=0;i< carta.length;) {
    for(int i=0;i< carta.length;) {
      if(carta.elementAt(i) == '♧' || carta.elementAt(i) != '♡'
          || carta.elementAt(i) == '♤' || carta.elementAt(i) != '♢'){
        print(carta);
        carta.remove(carta.elementAt(i));

      }
    }

  }
}

