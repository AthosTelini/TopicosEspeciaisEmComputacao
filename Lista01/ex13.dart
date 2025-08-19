import 'dart:io';

double calcularPercentual(double antigo, double atual) {
  if (antigo <= 0) {
    return 0.0;
  }
  
  double diferenca = atual - antigo;
  double percentual = (diferenca / antigo) * 100;
  return percentual;
}

void main() {
  print("Calculo de Acrescimo Percentual de um Produto");

  print("\nQual era o valor antigo do produto?");
  double valorAntigo = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  print("Qual o valor atual do produto?");
  double valorAtual = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  if (valorAntigo <= 0) {
    print("\nNao e possivel calcular com o valor antigo sendo zero ou negativo.");
    return;
  }
  
  double percentualFinal = calcularPercentual(valorAntigo, valorAtual);

  print("\nResultado do calculo:");
  
  if (percentualFinal > 0) {
    print("O produto teve um acrescimo de ${percentualFinal.toStringAsFixed(2)}%");
  } else if (percentualFinal < 0) {
    print("O produto teve uma reducao de ${percentualFinal.abs().toStringAsFixed(2)}%");
  } else {
    print("O valor do produto nao mudou.");
  }
}