import 'dart:io';

void main() {
  print("Calculo de Fatorial");

  print("\nDigite um numero inteiro:");
  String? entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print("Isso nao parece ser um numero valido.");
    return;
  }

  if (numero < 0) {
    print("Nao existe fatorial de numero negativo.");
    return;
  }

  int fatorial = 1;
  for (int i = 1; i <= numero; i++) {
    fatorial = fatorial * i;
  }

  print("O fatorial de $numero e: $fatorial");
}