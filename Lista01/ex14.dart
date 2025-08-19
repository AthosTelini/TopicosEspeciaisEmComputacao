import 'dart:io';

bool ehBissexto(int ano) {
  return (ano % 400 == 0) || (ano % 4 == 0 && ano % 100 != 0);
}

void main() {
  print("Verificador de Ano Bissexto");

  print("\nDigite um ano para verificar:");
  String? entrada = stdin.readLineSync();
  int? ano = int.tryParse(entrada ?? '');

  if (ano == null || ano <= 0) {
    print("Ano invalido. Tente de novo.");
    return;
  }

  if (ehBissexto(ano)) {
    print("O ano $ano e bissexto.");
  } else {
    print("O ano $ano nao e bissexto.");
  }
}