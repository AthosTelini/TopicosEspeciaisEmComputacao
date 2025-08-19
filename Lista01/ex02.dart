import 'dart:io';

void main() {
  print("Digite um valor flutuante:");
  String input = stdin.readLineSync()!;
  double numero = double.parse(input);
  double quintaParte = numero / 5;
  print("A quinta parte de $numero é: $quintaParte");
}
