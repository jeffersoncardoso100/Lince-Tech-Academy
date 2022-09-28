
import 'dart:collection';

 void main() {
  final baralhoQueue = Queue<String>();
  baralhoQueue.addFirst("♧ Paus");
  baralhoQueue.addFirst("♡ Copas");
  baralhoQueue.addFirst("♤ Espadas");
  baralhoQueue.addFirst("♢ Ouros");

  final primeiro = baralhoQueue.removeLast();
  final segundo = baralhoQueue .removeLast();
  final terceiro = baralhoQueue.removeLast();
  final quarto = baralhoQueue.removeLast();


  print(primeiro);
  print(segundo);
  print(terceiro);
  print(quarto);
}
// Falta seguir a implementação, porém nao estou conseguindo intender a logica.