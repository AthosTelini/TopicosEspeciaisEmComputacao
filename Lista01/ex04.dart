import 'dart:io';

void main() {
  print("Lançamento de Venda");

  print("\nDados do Produto 1 ");
  print("Digite o nome do primeiro produto:");
  String nomeProduto1 = stdin.readLineSync() ?? 'Produto 1';

  print("Digite o valor unitário de '$nomeProduto1':");
  double precoProduto1 =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  print("Digite a quantidade de '$nomeProduto1':");
  int qtdProduto1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("\nDados do Produto 2");
  print("Digite o nome do segundo produto:");
  String nomeProduto2 = stdin.readLineSync() ?? 'Produto 2';

  print("Digite o valor unitário de '$nomeProduto2':");
  double precoProduto2 =
      double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  print("Digite a quantidade de '$nomeProduto2':");
  int qtdProduto2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  double subtotal1 = qtdProduto1 * precoProduto1;
  double subtotal2 = qtdProduto2 * precoProduto2;
  double totalPedido = subtotal1 + subtotal2;
  double valorFinal = totalPedido;

  print("\nResumo do Pedido");
  print(
    "$qtdProduto1 x $nomeProduto1 (R\$ ${precoProduto1.toStringAsFixed(2)}) = R\$ ${subtotal1.toStringAsFixed(2)}",
  );
  print(
    "$qtdProduto2 x $nomeProduto2 (R\$ ${precoProduto2.toStringAsFixed(2)}) = R\$ ${subtotal2.toStringAsFixed(2)}",
  );
  print("--------------------------");
  print("Valor total: R\$ ${totalPedido.toStringAsFixed(2)}");

  if (totalPedido > 100.00) {
    double desconto = totalPedido * 0.10;
    valorFinal = totalPedido - desconto;
    print("Desconto (10%): R\$ ${desconto.toStringAsFixed(2)}");
  }

  print("--------------------------");
  print("VALOR A PAGAR: R\$ ${valorFinal.toStringAsFixed(2)}");
  print("--------------------------");
}
