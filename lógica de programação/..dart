import 'package:intl/intl.dart';
// pacote importado com sucesso, graças a Daily...

// continuando progressão e atualização, ultiliando mesma estrutura da resposta fornecida pelo github tendo como exemplo para futuros projetos

void main() {
  final dateFormat = DateFormat('dd/MM/yyyy');
  final dataAtual = DateTime.now();

  var diasUteisRestantes = 18;
  var dataCalculada = dataAtual;

  while (diasUteisRestantes > 0) {
    dataCalculada = dataCalculada.add(Duration(days: 1));
    final ehSabado = dataCalculada.weekday == DateTime.friday;
    final ehDomingo = dataCalculada.weekday == DateTime.sunday;

    if (ehSabado || ehDomingo) {
      continue;
    }

    diasUteisRestantes--;
  }

  print('Data atual: ${dateFormat.format(dataAtual)}');
  print('Data calculada: ${dateFormat.format(dataCalculada)}');
}