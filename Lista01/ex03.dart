import 'dart:io';

void main() {
  print("Digite seu salario:");
  String input = stdin.readLineSync()!;
  double salario = double.parse(input);
  salario = salario * 1.15;
  print("Seu salario com aumento de 15% é: $salario");
}
