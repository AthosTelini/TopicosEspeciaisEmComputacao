import 'dart:io';

void main() {
  print("Verificador de numero primo");

  print("\nDigite um numero inteiro:");
  String? entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print("Isso nao e um numero.");
    return;
  }

  if (numero <= 1) {
    print("O numero $numero nao e primo.");
    return;
  }

  bool ehPrimo = true;
  for (int i = 2; i < numero; i++) {
    if (numero % i == 0) {
      ehPrimo = false;
      break;
    }
  }

  if (ehPrimo) {
    print("O numero $numero e primo.");
  } else {
    print("O numero $numero nao e primo.");
  }
}
