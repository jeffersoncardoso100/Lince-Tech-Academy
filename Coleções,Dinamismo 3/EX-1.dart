import 'dart:core';
import 'dart:math';

void main() {
  ListaCompras lista = ListaCompras();
  lista.incluir({
    Item('Macarrão', 2),
    Item('Feijão', 1),
    Item('Carne', 1),
    Item('Arroz', 2),
    Item('Refrigerante', 1),
  });

}


class ListaCompras {
  int novoLista = 0, progresso = 0;

  Set<Item> itensDesejados = {};
  Set<Item> itensComprados = {};
  Set<Item> semEstoque = {};


  void incluir(Set<Item> novoItem) {
    novoLista += novoItem.length;
    itensDesejados.addAll(novoItem);
  }

  void jaComprado(Set<Item> jacomprado){
    progresso+= jacomprado.length;
    itensComprados.addAll(jacomprado);


  }
}

/// FALTA EU ACESSAR INDICE...
/// ITEM DA LISTA
///
  /*void status(){
  print('Progresso: $status ');



}
class Item {
  Item(this.nome, this.quantidade);

  String nome;
  int quantidade;
  String toString()=> 'Produto: $nome Quantidade: $quantidade';
}

*/