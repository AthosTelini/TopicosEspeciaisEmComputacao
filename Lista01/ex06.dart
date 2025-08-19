import 'dart:io';

void main() {
  print("Calculo de imposto do carro");

  print("\nQual o ano do carro?");
  int ano = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("Qual o valor do carro?");
  double valorCarro =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  if (ano <= 0 || valorCarro <= 0) {
    print("O ano ou o valor parece invalido.");
    return;
  }

  double taxa;
  double imposto;
  String aliquota;

  if (ano < 2000) {
    taxa = 0.01;
    aliquota = "1%";
  } else {
    taxa = 0.015;
    aliquota = "1.5%";
  }

  imposto = valorCarro * taxa;

  print("\nResumo do calculo:");
  print("Ano do carro: $ano");
  print("Valor do carro: R\$ ${valorCarro.toStringAsFixed(2)}");
  print("Taxa aplicada: $aliquota");
  print("Imposto a pagar: R\$ ${imposto.toStringAsFixed(2)}");
}
