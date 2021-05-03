import 'dart:math';

// 2. Crie uma classe calculadora. Esta classe deve ser abstrata e métodos que realiza as operações básicas (soma, subtração, divisão e multiplicação).

// Utilizando o conceito de herança crie uma classe chamada calculadora científica que implementa os seguintes cálculos: raiz quadrada e a potência. Dica utilize a classe Math do pacote dart (import 'dart:math';).

main() {
  CalculadoraCientifica calculator = CalculadoraCientifica();

  print('${calculator.soma(10, 10)}');
  print('${calculator.subtracao(10, 10)}');
  print('${calculator.divisao(10, 2)}');
  print('${calculator.multiplicacao(10, 10)}');

  print(calculator.raiz(10));
  print(calculator.potencia(10, 2));
  //calculator.raiz(10, 2);
}

abstract class Calculadora {
  int soma(int num1, int num2) {
    return num1 + num2;
  }

  int subtracao(int num1, int num2) {
    int somaTotal = 0;
    somaTotal = num1 - num2;
    return somaTotal;
  }

  double divisao(int num1, int num2) {
    double somaTotal = 0;
    somaTotal = num1 / num2;
    return somaTotal;
  }

  int multiplicacao(int num1, int num2) {
    int somaTotal = 0;
    somaTotal = num1 * num2;
    return somaTotal;
  }
}

class CalculadoraCientifica extends Calculadora {
  double raiz(double x) {
    return sqrt(x);
  }

  double potencia(double x, double exponent) {
    return pow(x, exponent).toDouble();
  }
}
