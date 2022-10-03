import 'dart:math' as math;



main() {
  Map<String, int> figurinhas = {
    'Messi': 0,
    'Philippe ': 1,
    'Cristiano Ronaldo': 2,
    'Neymar Jr': 3,
    'Hazard ': 4,
    'Kevin De Bruyne': 5,
    'Oblak': 6,
    'Van Dijk': 7,
    'Mohamed Salah': 8,
    'Modrić ': 9,
    'Ter Stegen': 10,
    'Mbappé.': 11,
    'Sergio Ramos': 12,
    'Sergio Aguero': 13,
    'Chiellini': 14,
    'Lewandowski ': 15,
    'Kane ': 16,
    'Kalidou Koulibaly': 17,
    "N'Golo Kanté": 18,
    'Alisson ': 19,
    'Griezmann ': 20,
  };

  final random = math.Random();
  Set<String> figurinhasSelecionadas= {};
  Set<String> albumCompleto= {};
  List<int> figOrder= [];
  List<int> figOrderComplete= [];
  randomKey(Map figurinhas) =>
      figurinhas.values.elementAt(random.nextInt(figurinhas.length));
  for(int i =0;i<4;i++){
    figOrder.add(randomKey(figurinhas));
  }
  figOrder.sort();
  for(int i=0; i<figOrder.length;i++) {
    figurinhasSelecionadas.add(figurinhas.keys.elementAt(figOrder[i]));
  }
  for(int i =0;i<100;i++){
    figOrderComplete.add(randomKey(figurinhas));
  }
  figOrderComplete.sort();
  for(int i=0; i<figOrderComplete.toSet().length;i++) {
    print(i);
    albumCompleto.add(figurinhas.keys.elementAt(figOrderComplete.toSet().elementAt(i)));
    print("Este é o album completo, com poucas chances mas com muita programção \n$albumCompleto");
  }
  print(figurinhasSelecionadas);
  PacoteDeFiguras pacote1 = PacoteDeFiguras(figurinhasSelecionadas);
}

class PacoteDeFiguras {

  Set<String> figurinhasSelecionadas= {};

  PacoteDeFiguras(this.figurinhasSelecionadas);
}