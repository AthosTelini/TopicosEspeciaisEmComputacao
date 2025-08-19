import 'dart:io';

void main() {
  print("Digite o preço de etiqueta do produto:");
  double precoEtiqueta =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  if (precoEtiqueta <= 0) {
    print("O preço digitado é inválido.");
    return;
  }

  print("\n--- Escolha a Condição de Pagamento ---");
  print("0 - À vista (25% de desconto)");
  print("1 - Cheque 30 dias (20% de desconto)");
  print("2 - Cartão de Crédito 2x (10% de desconto)");
  print("3 - Cartão de Crédito 3x (5% de desconto)");
  print("Qualquer outro número - Negociado (sem desconto)");

  print("\nDigite o código da opção desejada:");
  int codigoPagamento = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

  double precoFinal = 0.0;

  switch (codigoPagamento) {
    case 0:
      precoFinal = precoEtiqueta * 0.75;
      break;
    case 1:
      precoFinal = precoEtiqueta * 0.80;
      break;
    case 2:
      precoFinal = precoEtiqueta * 0.90;
      break;
    case 3:
      precoFinal = precoEtiqueta * 0.95;
      break;
    default:
      precoFinal = precoEtiqueta;
      break;
  }

  print("\n-------------------------------------");
  print("Preço da Etiqueta: R\$ ${precoEtiqueta.toStringAsFixed(2)}");
  print("Valor Final a Pagar: R\$ ${precoFinal.toStringAsFixed(2)}");
  print("-------------------------------------");
}
