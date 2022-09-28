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
  int novoLista = 0,
      progresso = 0;

  Set<Item> itensDesejados = {};
  Set<Item> itensComprados = {};
  Set<Item> semEstoque = {};


  incluir(Set<Item> novoItem) {
    novoLista += novoItem.length;
    itensDesejados.addAll(novoItem);
  }

  jaComprado(Set<Item> jacomprado) {
    progresso += jacomprado.length;
    itensComprados.addAll(jacomprado);
    for (final itemComprado in jacomprado) {
      itensDesejados.removeWhere((element) =>
      element.nome == itemComprado.nome && element.quantidade == itemComprado.quantidade);
    }


  }



  void status() {



  }
}

class Item {
  Item(this.nome, this.quantidade);

  String nome;
  int quantidade;

  String toString() => 'Produto: $nome Quantidade: $quantidade';
}