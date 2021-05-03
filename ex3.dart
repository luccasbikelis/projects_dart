main() {
  Contador cont = Contador();

  cont.incrementar();
  cont.incrementar();
  cont.zerar();
}

class Contador {
  int _valor = 0;
  //int valorAtual = 0;

  void incrementar() {
    _valor++;
    print(_valor);
  }

  void zerar() {
    _valor = 0;
    print(_valor);
  }

  void retornar() {
    print('Valor Atual: $_valor');
  }
}
