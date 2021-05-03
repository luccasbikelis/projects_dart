main() {
  Ingresso ingresso1 = Ingresso();
  VIP vip1 = VIP();

  ingresso1.imprimeValor();
  int valorVip = vip1.imprimeValor();
  print("O valor do ingresso vip com adicional é: $valorVip");

  CamaroteInferior camarote1 = CamaroteInferior("Ala leste");
  CamaroteSuperior camarote2 = CamaroteSuperior("Ala sul");

  camarote1.acessarLocalizacao();
  print(camarote2.imprimeValor());
}

class Ingresso {
  int valor = 100;

  void imprimeValor() {
    print("O valor do ingresso normal é: $valor");
  }
}

class VIP extends Ingresso {
  int valorAdicional = 50;

  int imprimeValor() {
    return valor + valorAdicional;
  }
}

class Normal extends Ingresso {
  void ingresso() {
    print("Ingresso normal");
  }
}

class CamaroteInferior extends VIP {
  String localizacao;

  CamaroteInferior(this.localizacao);

  void acessarLocalizacao() {
    print(localizacao);
  }
}

class CamaroteSuperior extends VIP {
  String localizacao;

  CamaroteSuperior(this.localizacao);

  int imprimeValor() {
    return valor + valorAdicional;
  }
}
