import 'dart:io';

void main() {
  var idade = 0;
  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);
  print("Sua idade é: $idade");

  var altura;
  print("Digite sua altura");
  altura = double.parse(stdin.readLineSync()!);
  print("Sua altura é: $altura");
}
