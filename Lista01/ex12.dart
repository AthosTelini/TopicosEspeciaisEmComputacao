import 'dart:io';

double calcular(double x, double y, double z) {
  double resultado = (x * x) + y + z;
  return resultado;
}

void main() {
  print("Calculo da expressao (x*x) + y + z");

  print("\nDigite o valor de X:");
  double valorX =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  print("Digite o valor de Y:");
  double valorY =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  print("Digite o valor de Z:");
  double valorZ =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  double resultadoFinal = calcular(valorX, valorY, valorZ);

  print("\nResultado: $resultadoFinal");
}
