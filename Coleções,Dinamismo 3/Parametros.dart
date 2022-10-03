void main(List<String> arguments) {
  final recipientes = [
    GarrafaDePlastico("123456", 500),
    GarrafaDeVidro(1500),
  ];

  for (final recipiente in recipientes) {
    print('Recipiente: $recipiente');
  }
}

abstract class Recipiente {
  Recipiente(this.volume, this.material);

  final double volume;
  final String material;

  @override
  String toString() => "{volume: $volume, material: $material}";
}

class GarrafaDePlastico extends Recipiente {
  GarrafaDePlastico(this.codigoDeBarras, double volume) : super(volume, "plastico");

  final String codigoDeBarras;

  @override
  String toString() {
    return '{codigo de barras: $codigoDeBarras, volume: $volume, material: $material}';
  }
}

class GarrafaDeVidro extends Recipiente {
  GarrafaDeVidro(double volume) : super(volume, "vidro");
}