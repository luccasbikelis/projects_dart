//funções exercicio1
bool idadeValidacao(int idade) {
  if (idade < 18) {
    print("Cliente não aprovado, brinquedo é restrito para maiores de idade!");
    return false;
  }
  if (idade > 60) {
    print(
        "Cliente não aprovado, este brinquedo não é recomendado para idosos!");
    return false;
  }
  return true;
}

bool alturaValidacao(double altura) {
  if (altura < 1.50) {
    print(
        "Cliente não aprovado, este brinquedo é restrito para pessoas com altura maior que 1.5m");
    return false;
  }
  return true;
}
//funçõesexercicio1

//funções exercicio2
double mediaValores(List<int> numeros) {
  int soma = 0;

  numeros.forEach((numeros) {
    soma = soma + numeros;
  });
  return soma / numeros.length;
}

int menorNumero(List<int> numeros) {
  int menor = numeros[0];

  numeros.forEach((numero) {
    if (menor > numero) {
      menor = numero;
    }
  });
  return menor;
}

int maiorNumero(List<int> numeros) {
  int maior = numeros[0];

  numeros.forEach((numero) {
    if (maior < numero) {
      maior = numero;
    }
  });
  return maior;
}

//funções exercicio2
