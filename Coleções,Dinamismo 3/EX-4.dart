import 'dart:math' as math;

main() {
  Map<String, int> figurinhas = {

    'Neymar jr': 0,
    'Pedro': 1,
    'Raphinha': 2,
    'Vinicius Jr': 3,
    'Antonio': 4,
    'Rodrigo': 5,
    'Weverton': 6,
    'Ederson': 7,
    'Danilo': 8,
    'Alex Telles': 9,
    'Bremer': 10,
    'Eder Militão': 11,
    'Ibañez': 22,
    'Everton Ribeiro': 13,
    'Fred': 14,
    'Lucas Paquetá': 15,
    'Gabriel': 16,
    'Jefferson': 17,
    'Bruno': 18,
    'Alysson': 19,
  };

  final random = math.Random();
  Set<String> figurinhasSelecionadas = {};
  Set<String> albumCompleto = {};
  List<int> figOrder = [];
  List<int> figOrderComplete = [];
  randomKey(Map figurinhas) =>
      figurinhas.values.elementAt(random.nextInt(figurinhas.length));
  for (int i = 0; i < 4; i++) {
    figOrder.add(randomKey(figurinhas));
  }
  figOrder.sort();
  for (int i = 0; i < figOrder.length; i++) {
    figurinhasSelecionadas.add(figurinhas.keys.elementAt(figOrder[i]));
  }
  for (int i = 0; i < 100; i++) {
    figOrderComplete.add(randomKey(figurinhas));
  }
  figOrderComplete.sort();
  for (int i = 0; i < figOrderComplete.toSet().length; i++) {
    print(i);
    albumCompleto
        .add(figurinhas.keys.elementAt(figOrderComplete.toSet().elementAt(i)));
    print("$albumCompleto");
  }

}

class PacoteDeFiguras {
  Set<String> figurinhasSelecionadas = {};

  PacoteDeFiguras(this.figurinhasSelecionadas);