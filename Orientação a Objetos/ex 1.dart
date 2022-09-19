// NÃO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:core';
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
meioDeComunicacao.fazerLigacao('(47) 99876-5432.');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}
// Criei uma nova classe
class MeioDeComunicacao {
// dentro do metodo
  fazerLigacao(meioDeComunicacao) {
    print("$Telefone ligando para $meioDeComunicacao");


    // NÃO ESTOU CONSEGUINDO IMPLEMENTAR O METODO RAMDOM.

  }
}
class Orelhao extends MeioDeComunicacao {
}
class Celular extends MeioDeComunicacao {}
class Telefone extends MeioDeComunicacao {}


