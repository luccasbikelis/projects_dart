import 'functions.dart';

main() {
  int idade = 17;
  double altura = 1.45;

  if (!idadeValidacao(idade)) return;
  if (!alturaValidacao(altura)) return;
  return print("Cliente aprovado, boa diversão! :)");
}
