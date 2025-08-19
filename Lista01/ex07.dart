import 'dart:io';

void main() {
  print("Calculo de aumento de salario");

  print("\nQual o salario atual?");
  double salarioAntigo =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  if (salarioAntigo <= 0) {
    print("O salario digitado nao e valido.");
    return;
  }

  print("\nQual o codigo do cargo?");
  print("101 - Gerente");
  print("102 - Engenheiro");
  print("103 - Tecnico");
  print("(Qualquer outro numero para demais cargos)");

  print("\nDigite o codigo:");
  int codigoCargo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  double percentual;

  switch (codigoCargo) {
    case 101:
      percentual = 0.10;
      break;
    case 102:
      percentual = 0.20;
      break;
    case 103:
      percentual = 0.30;
      break;
    default:
      percentual = 0.40;
      break;
  }

  double diferenca = salarioAntigo * percentual;
  double salarioNovo = salarioAntigo + diferenca;

  print("\nResumo do reajuste:");
  print("Salario antigo: R\$ ${salarioAntigo.toStringAsFixed(2)}");
  print("Salario novo: R\$ ${salarioNovo.toStringAsFixed(2)}");
  print("Diferenca: R\$ ${diferenca.toStringAsFixed(2)}");
}
