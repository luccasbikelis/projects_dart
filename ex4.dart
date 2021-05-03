// @dart=2.9
// @dart para passar o null como parametro
void main() {
  Pessoa maria = Pessoa("Maria", null, null);
  Pessoa alvino = Pessoa("Alvino", null, null);
  Pessoa marielsa = Pessoa.somenteNome('Marielsa');
  Pessoa ricardo = Pessoa("Ricardo", maria, alvino);
  Pessoa luccas = Pessoa('Luccas', marielsa, ricardo);
  Pessoa miguel = Pessoa("Miguel", marielsa, ricardo);

  luccas.meuIrmao(miguel);
}

class Pessoa {
  String nome;
  Pessoa mae;
  Pessoa pai;

  Pessoa(this.nome, this.mae, this.pai);
  Pessoa.somenteNome(this.nome);

  void souEu(Pessoa outraPessoa) {
    if (outraPessoa.nome == nome && outraPessoa.mae == mae) {
      print("Somos semelhantes");
    } else {
      print("Nada haver");
    }
  }

  void meuIrmao(Pessoa outraPessoa) {
    if (outraPessoa.mae == mae || outraPessoa.pai == pai) {
      print("eh meu irmao!");
    }
  }

  void ehParentesco(Pessoa outraPessoa) {
    if (outraPessoa == mae) {
      print('${outraPessoa.nome} é minha mãe!');
    }

    if (outraPessoa == pai) {
      print('${outraPessoa.nome} é meu pai!');
    }

    if (outraPessoa == mae.pai || outraPessoa == mae.mae) {
      print('${outraPessoa.nome} é meu avô ou avó!');
    }

    if (outraPessoa == pai.pai || outraPessoa == mae.mae) {
      print('${outraPessoa.nome} é meu avô ou avó!');
    }
  }
}
