main() {
  Carros fiesta = Carros('fiesta');

  List<Carros> listaDeCarros = [];
  listaDeCarros.add(Carros("fiesta"));
  listaDeCarros.add(Carros("corola"));

  listaDeCarros.forEach((Carro) {
    fiesta.andar();
  });

  listaDeCarros.forEach((Carro) {
    print(Carro.modelo);
  });
}

class Carros {
  String modelo;
  int velocidade = 0;

  Carros(this.modelo);

  void andar() {
    print('Carro anda.');
    velocidade = 10;
  }
}
