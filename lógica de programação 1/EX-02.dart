
void main() {
  // lista do tipo double
  List<double> temperatura = [0.0, 15.0, 1, 21.7, 40.0, 41.0] ;

  converTemperatura(temperatura);
}

//   converte em C para F 	Fórmula: (0 °C × 9/5) + 32 = 32 °F
double celciusFahrenheit(double celcius) => celcius * 9/5 + 32;

// converte em C para T   Fórmula:	 0 °C + 273,15
double celciusKelvin(double celcius) => celcius + 273.15;


void converTemperatura(List<double> temperatura) {
  for (final celcius in temperatura) {
    final fahrenheit = celciusFahrenheit(celcius);
    final kelvin = celciusKelvin(celcius);

    // sairá tudo convertido em C/F ....C/T
    print('Celcius: ${celcius.toStringAsFixed(2)}, '
        'fahrenheit: ${fahrenheit.toStringAsFixed(2)}, '
        'kelvin: ${kelvin.toStringAsFixed(2)}');
  }
}