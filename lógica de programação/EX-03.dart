// armazenar valores em memória, SEM ALTERAÇÕES.
const vogal = 'aeiou'; const consoante = 'bcdfghjklmnpqrstvwxyz';

void main() {


final paragrafo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
final palavras = contarPalavras(paragrafo);
final tamanhoDoTexto = contarTamanhoTexto(paragrafo);
final numeroDeFrases = contarNumeroDeFrases(paragrafo);
final numeroDeVogais = contarNumeroDeVogais(paragrafo);
final consoantesEncontradas = pegarConsoantesUtilizadas(paragrafo);


// mostrar o valor das variaveis fnl
print(' Texto do Paragrafo: \n $paragrafo.');
print('Número de palavras: $palavras.');
print('Tamanho do texto: $tamanhoDoTexto.');
print('Número de frases: $numeroDeFrases.');
print('Número de vogais: $numeroDeVogais.');
print('Consoantes encontradas: $consoantesEncontradas.');
}

int contarPalavras(String paragrafo) {
if (paragrafo.trim().isEmpty) {
return 0;
}
return paragrafo.split(' ').length;
}
// montagem de estru... condicionais
int contarTamanhoTexto(String paragrafo) => paragrafo.trim().length;

int contarNumeroDeFrases(String paragrafo) {
var contadorFrases = 0;
final frases = paragrafo.trim().split('.');
for (final frase in frases) {
if (frase.isNotEmpty) {
contadorFrases++;
}
}
return contadorFrases;
}

int contarNumeroDeVogais(String paragrafo) {
var contadorVogais = 0;
for (final rune in paragrafo.trim().runes) {
final caractere = String.fromCharCode(rune).toLowerCase();
if (vogal.contains(caractere)) {
contadorVogais++;
}
}
return contadorVogais;
}

String pegarConsoantesUtilizadas(String paragrafo) {
final consoantesEncontradas = <String>{};

for (final rune in paragrafo.trim().runes) {
final caractere = String.fromCharCode(rune).toLowerCase();
final ehConsoante = consoante.contains(caractere);
if (!ehConsoante) {
continue;
}

final jaEncontrada = consoantesEncontradas.contains(caractere);
if (!jaEncontrada) {
consoantesEncontradas.add(caractere);
}
}
final ordenado = (consoantesEncontradas.toList())..sort();

return ordenado.join(', ');
}