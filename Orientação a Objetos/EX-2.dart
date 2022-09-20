import 'dart:math';

void main() {
  final pessoa = Pessoa();

  final fornecedor = [FornecedorDeBebidas(),  FornecedorDeSanduiches(), FornecedorDeBolos(), FornecedorDePetiscos(), FornecedorDeSaladas()];

  final random = Random();

  int refeicoes = 0;

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    refeicoes++;
    int a = random.nextInt(fornecedor.length);
    pessoa.refeicao(fornecedor[a]);}
  num _calorias = pessoa.calorias();
  pessoa.informacoes(_calorias);
  pessoa.refeicoes(_calorias, refeicoes);}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}
enum Status {deficitExtremo, deficitCalorias, satisfeitoPessoa, excessoCalorias}

class FornecedorDeSanduiches {

  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduíche natural', 82),
    Produto('Sanduíche de presunto', 102),
    Produto('Sanduíche de queijo', 351),
    Produto('Sanduíche de carne', 248),
    Produto('Sanduíche de ovos', 72),
  ];

  Produto fornecer() {
    return _sanduichesDisponiveis[
    _random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBebidas {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeBolos {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de brigadeiro', 203),
    Produto('Bolo de morango', 189),
    Produto('Bolo de chocolate', 215),
    Produto('Bolo de prestigio', 250),
    Produto('Bolo de abacai', 131),
  ];

  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas {

  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada de Alface', 15),
    Produto('Salada de espinafre', 18),
    Produto('Salada de cenoura', 33),
    Produto('Salada de rucula', 26),
    Produto('Salada de beterraba', 89),
  ];

  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}
class FornecedorDePetiscos {

  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Espetinho de carne', 247),
    Produto('Peixe frito', 332),
    Produto('Fritas', 445),
    Produto('Alcatra na chapa', 270),
    Produto('Aneis de cebola', 320),
  ];

  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class Pessoa {
  Status caloriasStatus = Status.deficitCalorias;

  // Acumulador de calorias
  num _caloriasConsumidas = 0;

  /// Imprime as informações desse consumidor
  void informacoes(num _calorias) {
    print('Calorias consumidas: $_calorias');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(final fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
    _caloriasConsumidas += produto.calorias;
  }

  num calorias() {

    Random _aleatorio = Random();
    int _caloriasInicias = _aleatorio.nextInt(3000); //Objetivo 4 Concluido.
    num _calorias = _caloriasInicias + _caloriasConsumidas;

    if (_calorias <= 500) {
      caloriasStatus = Status.deficitExtremo;
      print('Status: Deficit extremo de calorias.');
    } else {
      if (_calorias <= 1800) {
        caloriasStatus = Status.deficitCalorias;
        print('Status: Deficit de calorias.');
      } else {
        if (_calorias <= 2500) {
          caloriasStatus = Status.satisfeitoPessoa;
          print('Status: Pessoa está satisfeita.');
        } else {
          if (_calorias > 2500) {
            caloriasStatus = Status.excessoCalorias;
            print('Status: Excesso de calorias.');
          }
        }
      }
    }

    return _calorias;
  }

  void refeicoes(num _calorias, int refeicoes) {
    print('Foram feitas $refeicoes refeições.');
    if (caloriasStatus == Status.excessoCalorias ||
        caloriasStatus == Status.satisfeitoPessoa) {
      print('A pessoa teve refeições suficientes.');
    }
    if (caloriasStatus == Status.deficitCalorias ||
        caloriasStatus == Status.deficitExtremo) {
      print('A pessoa está precisando de mais refeições.');
    }
  }
}
