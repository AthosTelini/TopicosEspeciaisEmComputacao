import 'dart:io';

void main() {
  List<int> numeros = [];

  print("Digite 5 numeros um de cada vez:");

  for (int i = 1; i <= 5; i++) {
    print("Digite o ${i}º numero:");
    String? entrada = stdin.readLineSync();
    int? numero = int.tryParse(entrada ?? '');

    if (numero != null) {
      numeros.add(numero);
    } else {
      print("Entrada invalida. Tente de novo.");
      i--;
    }
  }

  print("\nOs numeros na ordem inversa sao:");

  for (var numero in numeros.reversed) {
    print(numero);
  }
}
