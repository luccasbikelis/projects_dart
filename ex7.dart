// @dart=2.9
main() {
  Homem homem = Homem("Luccas", 1.76, "Pardo");
  Cao cao = Cao("Vira lata", 1.0, "Preto");

  print(homem.nome);
  print(cao.comprimento);
  cao.barulhoAnimal();
  homem.andar();
}

class Animal {
  String nome;
  double comprimento;
  String cor;

  Animal(this.nome, this.comprimento, this.cor);

  void barulhoAnimal() {
    print("Chrum");
  }

  void andar() {
    print("Animal anda de quatro");
  }
}

class Homem extends Animal {
  Homem(String nome, double comprimento, String cor)
      : super(nome, comprimento, cor);

  @override
  void barulhoAnimal() {
    print("Olá");
  }

  @override
  void andar() {
    print("Animal que anda de pé");
  }
}

class Cao extends Animal {
  Cao(String nome, double comprimento, String cor)
      : super(nome, comprimento, cor);

  @override
  void barulhoAnimal() {
    print("Au Au");
  }
}

class Gato extends Animal {
  Gato(String nome, double comprimento, String cor)
      : super(nome, comprimento, cor);

  @override
  void barulhoAnimal() {
    print("Miau");
  }
}
