main() {
  Automovel carro = Automovel();
  carro.MudarOleo(10.0);
  print(carro.acelerar(30));
  carro.parar();
  print(carro.acelerar(10));
}

abstract class Veiculo {
  double velocidade = 0;

  double acelerar(double velocidade) {
    this.velocidade = velocidade + velocidade;
    return this.velocidade;
  }

  double parar() {
    return velocidade = 0;
  }
}

class Bicicleta extends Veiculo {}

class Automovel extends Veiculo with MudarOleo1 {}

mixin MudarOleo1 {
  void MudarOleo(double litros) {
    print("Oleo trocado com sucesso! litros: $litros");
  }
}
