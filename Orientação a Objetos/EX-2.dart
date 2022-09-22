import 'dart:math';

void main() {
  {
    final random = Random();
    final pessoa = Pessoa();
    final fornecedores = [
      Fornecedor(<Produto>[
        Produto('Agua', 0),
        Produto('Refrigerante', 200),
        Produto('Suco de fruta', 100),
        Produto('Energetico', 135),
        Produto('Café', 60),
        Produto('Cha', 35),
      ]),
      Fornecedor(<Produto>[
        Produto('Sanduiche', 200),
      ]),
      Fornecedor(<Produto>[
        Produto('Bolo de Cenoura', 450),
      ]),
      Fornecedor(<Produto>[
        Produto('Salada de tomate', 20),
      ]),
      Fornecedor(<Produto>[
        Produto('Petisco file de peixe', 236),
      ])
    ];
    for (var i = 0; i < 5; i++) {
      final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
      pessoa.refeicao(fornecedor);
    }
    pessoa.informacoes();
  }
}

class Fornecedor {
  Fornecedor(this._produtosDisponiveis);

  final _random = Random();
  final List<Produto> _produtosDisponiveis;

  Produto fornecer() {
    return _produtosDisponiveis[_random.nextInt(_produtosDisponiveis.length)];
  }
}

class Produto {
  Produto(this.nome, this.calorias);

  final String nome;
  final int calorias;
}

class Pessoa {
  int _caloriasConsumidas = 0;

  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  void refeicao(fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calororias');

    _caloriasConsumidas = produto.calorias;
  }
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

