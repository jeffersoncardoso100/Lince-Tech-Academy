import 'dart:collection';
import 'dart:math' as math;

void main(){
  final fila =  Queue<String>();
  final nome =  Queue<String>();

  nome.addLast('Jefferson Cardoso');
  nome.addLast('Bruno da Silva');
  nome.addLast('Guilherme dos Santos');
  nome.addLast('Lucas Rodrigues');
  nome.addLast('Enzo de Oliveira');
  nome.addLast('Gabriela dos Anjos');
  nome.addLast('Ana de Lima ');
  nome.addLast('Yago de Moura');
  nome.addLast('Felipe Santos');

  Pessoa pessoa1 = Pessoa();
  Pessoa pessoa2 = Pessoa();
  final novaPessoa = pessoa1.gerarNomeAleatorio(nome);
  print("$novaPessoa entrou na fila");
  fila.addLast(novaPessoa);
  for(int i=0;i< fila.length;) {
    print("${fila.elementAt(i)} foi atendida(o)");
    fila.removeFirst();
  }

}
class Pessoa{

  gerarNomeAleatorio(Queue<String> nome){
    final random = math.Random();
    final nomeAleatorio = nome.elementAt(random.nextInt(nome.length,));
    return "$nomeAleatorio";
  }
}