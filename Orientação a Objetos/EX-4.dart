import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retangulo A', 4, 3);
  final retanguloB = Retangulo('Retangulo B', 19, 11);

  final circuloMaiorArea = comparador.circuloDeMaiorArea(circuloA, circuloB);
  final retanguloMaiorArea = comparador.retanguloDeMaiorArea(
    retanguloA,
    retanguloB,
  );

  if (circuloMaiorArea.area > retanguloMaiorArea.area) {
    print(
      'A maior area é ${circuloMaiorArea.area.toStringAsFixed(2)} '
          'e pertence a ${circuloMaiorArea.nome}',
    );
  } else {
    print(
      'A maior area é ${retanguloMaiorArea.area.toStringAsFixed(2)} '
          'e pertence a ${retanguloMaiorArea.nome}',
    );
  }

  final circuloaiorPerimetro = comparador.circuloDeMaiorPerimetro(
    circuloA,
    circuloB,
  );
  final retanguloMaiorPerimetro = comparador.retanguloDeMaiorPerimetro(
    retanguloA,
    retanguloB,
  );
  if (circuloaiorPerimetro.area > retanguloMaiorPerimetro.area) {
    print(
      'O maior perimetro é ${circuloaiorPerimetro.perimetro.toStringAsFixed(2)} '
          'e pertence a ${circuloaiorPerimetro.nome}',
    );
  } else {
    print(
      'O maior perimetro é ${retanguloMaiorPerimetro.perimetro.toStringAsFixed(2)} '
          'e pertence a ${retanguloMaiorPerimetro.nome}',
    );
  }
}
abstract class FormasG {

  final String nome;
  final double? lado;
  final int? nLados;

  Formas(this.nome, {this.lado, this.nLados});
}

class Circulo extends FormasG {

  /// Construtor padrão, recebe o [raio] do círculo.
  Circulo(super.nome, this.raio);
  final double raio;

  /// Retorna a area desse circulo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perimetro desse circulo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retangulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends FormasG{
  /// Construtor padrão, recebe a [altura] e [largura] do retangulo
  Retangulo(super.nome, {super.lado, super.nLados, this.altura, this.largura});

  final double? largura;
  final double? altura;

  /// Retorna a area desse circulo

  double get area => altura * largura;

  /// Retorna o perimetro desse circulo
  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que é um formato especial de
/// retangulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends Retangulo {
  /// Construtor padrão, recebe o [lado] do quadrado
  Quadrado(super.nome, {super.lado, super.nLados});

  /// Retorna a area desse quadrado
  double get area => lado! * lado!;

  /// Retorna o perimetro desse quadrado
  double get perimetro => lado! * nLados!;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  /// Retorna o circulo com a maior area, ou [circuloA] caso as areas sejam
  /// iguais
  Circulo circuloDeMaiorArea(Circulo circuloA, Circulo circuloB) {
    if (circuloA.area > circuloB.area) {
      return circuloA;
    } else if (circuloB.area > circuloA.area) {
      return circuloB;
    }
    return circuloA;
  }

  /// Retorna o circulo com o maior perimetro, ou [circuloA] caso os perimetros
  /// sejam iguais
  Circulo circuloDeMaiorPerimetro(Circulo circuloA, Circulo circuloB) {
    if (circuloA.perimetro > circuloB.perimetro) {
      return circuloA;
    } else if (circuloB.perimetro > circuloA.perimetro) {
      return circuloB;
    }
    return circuloA;
  }

  /// Retorna o retangulo com o maior perimetro, ou [retanguloA] caso os
  /// perimetros sejam iguais
  Retangulo retanguloDeMaiorPerimetro(Retangulo retanguloA, Retangulo retanguloB) {
    if (retanguloA.perimetro > retanguloB.perimetro) {
      return retanguloA;
    } else if (retanguloB.perimetro > retanguloA.perimetro) {
      return retanguloB;
    }
    return retanguloA;
  }

  /// Retorna o retangulo com o maior perimetro, ou [retanguloA] caso os
  /// perimetros sejam iguais
  Retangulo retanguloDeMaiorArea(Retangulo retanguloA, Retangulo retanguloB) {
    if (retanguloA.area > retanguloB.area) {
      return retanguloA;
    } else if (retanguloB.area > retanguloA.area) {
      return retanguloB;
    }
    return retanguloA;
  }
}