main() {
  Warrior kael = Warrior("Kael", 25, 15, 12);
  Mage luccas = Mage("luccas", 25, 30, 15);

  print(kael.atacar());
  print(kael.proteger(27));

  if (kael.magicForce > luccas.magicForce) {
    return print("Kael é o vencedor com ${kael.magicForce} de força magica!");
  } else if (kael.magicForce < luccas.magicForce) {
    return print("luccas é o vencedor com ${kael.magicForce} de força magica!");
  }
}

abstract class Character {
  String name;
  int life;
  int physicalStrength;
  int magicForce;

  Character(this.name, this.life, this.physicalStrength, this.magicForce);
}

class Warrior extends Character with Escudo, Espada {
  Warrior(String nome, int life, int physicalStrength, int magicForce)
      : super(nome, life, physicalStrength, magicForce);
}

class Mage extends Character with VarinhaMagica {
  Mage(String nome, int life, int physicalStrength, int magicForce)
      : super(nome, life, physicalStrength, magicForce);
}

class Elf extends Character with ArcoeFlecha {
  Elf(String nome, int life, int physicalStrength, int magicForce)
      : super(nome, life, physicalStrength, magicForce);
}

mixin Escudo on Character {
  int proteger(int valor) {
    return valor;
  }
}

mixin Espada on Character {
  int atacar() {
    return physicalStrength;
  }
}

mixin VarinhaMagica on Character {
  int feitico() {
    return magicForce;
  }
}
mixin ArcoeFlecha on Character {
  int feitico() {
    return magicForce + physicalStrength;
  }
}
