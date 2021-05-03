// 1.   Escreva uma classe Continente. Um continente possui um nome e é composto por um conjunto de países.
// Um país deve conter : nome , população, area(ex: 90000 km quadrados).

// Forneça os membros da classe a seguir:

// a) Construtor que inicialize o nome do continente;
// b) Um método que permita adicionar países aos continentes;
// c) Um método que retorne a área total do continente;
// d) Um método que retorne a população total do continente;
// e) Um método que retorne a densidade populacional do continente (dica: densidade populacional é igual a população dividido pela area);
// f) Um método que retorne o país com maior população no continente;
// g) Um método que retorne o país com menor população no continente;

main() {
  Continente americaDoSul = Continente("America do Sul");
  Continente europa = Continente("Europa");

  Pais brasil = Pais("Brasil", 10, 10);
  Pais argentina = Pais("Argentina", 10, 10);
  Pais alemanha = Pais("Alemanha", 20, 20);
  Pais portugal = Pais("Portugal", 40, 40);
  Pais chile = Pais("Chile", 10, 20);

// Propriedade da lista add

  americaDoSul.adicionarPais(chile);
  americaDoSul.adicionarPais(brasil);
  americaDoSul.adicionarPais(argentina);
  europa.adicionarPais(alemanha);
  europa.adicionarPais(portugal);

  print(americaDoSul.paises.first.mostrarPais());
  print(europa.paises.first.mostrarPais());

  double areaTotal = americaDoSul.areaTotal();
  print("Soma da area total do continente america do sul é: $areaTotal");

  double densidadePopulacional = americaDoSul.densidadeTotal();
  print(
      "Densidade populacional do continente america do sul é: $densidadePopulacional");

  Pais maiorPopulacao = americaDoSul.maiorPopulacao();
  print("O pais com a maior populacao é: ${maiorPopulacao.nome}");

  Pais menorPopulacao = americaDoSul.menorPopulacao();
  print("O pais com a menor populacao é: ${menorPopulacao.nome}");

  Pais menorPopulacaoEuropa = europa.menorPopulacao();
  print('${menorPopulacaoEuropa.nome}');
}

class Continente {
  List<Pais> paises = [];
  String nome;

  Continente(this.nome);

  void adicionarPais(Pais pais) {
    paises.add(pais);
  }

  double areaTotal() {
    double soma = 0;
    paises.forEach((pais) {
      soma = soma + pais.area;
    });

    return soma;
  }

  int populacaoTotal() {
    int soma = 0;
    this.paises.forEach((pais) {
      soma += pais.populacao;
    });
    return soma;
  }

  double densidadeTotal() {
    return areaTotal() / populacaoTotal();
  }

  Pais maiorPopulacao() {
    var maior = this.paises[0];

    this.paises.forEach((pais) {
      if (pais.populacao > maior.populacao) {
        maior = pais;
      }
    });

    return maior;
  }

  Pais menorPopulacao() {
    var menor = this.paises[0];

    this.paises.forEach((pais) {
      if (pais.populacao < menor.populacao) {
        menor = pais;
      }
    });

    return menor;
  }
}

class Pais {
  String nome;
  int populacao;
  double area;

  Pais(this.nome, this.populacao, this.area);

  String mostrarPais() {
    return ' Nome: $nome | População: $populacao | Area: $area';
  }
}
