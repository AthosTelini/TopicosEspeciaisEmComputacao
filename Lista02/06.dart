abstract class FormaGeometrica {
  double calculoDaArea();
}

class Quadrado extends FormaGeometrica {
  double comprimento;
  double altura;

  Quadrado(this.comprimento, this.altura);

  @override
  double calculoDaArea() {
    return comprimento * altura;
  }
}

class Circulo extends FormaGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calculoDaArea() {
    return 3.14 * raio * raio;
  }
}

class Losangulo extends FormaGeometrica {
  double diagonalMaior;
  double diagonalMenor;

  Losangulo(this.diagonalMaior, this.diagonalMenor);

  @override
  double calculoDaArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }
}

void main() {
  Quadrado q = Quadrado(4, 5);
  Circulo c = Circulo(3);
  Losangulo l = Losangulo(6, 4);

  print("area quadrado: ${q.calculoDaArea()}");
  print("area circulo: ${c.calculoDaArea()}");
  print("area losangulo: ${l.calculoDaArea()}");
}
