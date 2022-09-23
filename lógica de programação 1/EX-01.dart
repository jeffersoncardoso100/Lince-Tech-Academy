//Biblioteca
import 'dart:math';

void main() {
  // lista do tipo double poucas imformações sem obj, dinamica
  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];
  calcularLista(raios);
}

// calculo raio + pi ( fórmula C = 2πr: r → raio; π )
double areaCirculo(double raio) => pi * raio * raio;
double perimetroCirculo(double raio) => 2 * pi * raio;

void calcularLista(List<double> raios) {
  for (final raio in raios) {
    final area = areaCirculo(raio);
    final perimetro = perimetroCirculo(raio);


    //Frase que recebe os dados diretamente da Lista
    print(
        'Raio: $raio, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}.');
  }
}
