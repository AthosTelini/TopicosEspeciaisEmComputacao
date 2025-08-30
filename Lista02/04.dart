import 'dart:io';

class Conta {
  double saldo = 1000;

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo = saldo - valor;
      print("vc sacou $valor reais");
    } else {
      print("nao tem saldo suficiente");
    }
  }

  void depositar(double valor) {
    saldo = saldo + valor;
    print("vc depositou $valor reais");
  }

  void imprimirSaldo() {
    print("seu saldo agora é $saldo");
  }
}

void main() {
  Conta conta = Conta();

  while (true) {
    print("\n1 - sacar");
    print("2 - depositar");
    print("3 - ver saldo");
    print("4 - sair");
    stdout.write("escolhe ai: ");
    String? opcao = stdin.readLineSync();

    if (opcao == "1") {
      stdout.write("quanto vc quer sacar: ");
      double valor = double.parse(stdin.readLineSync()!);
      conta.sacar(valor);
    } else if (opcao == "2") {
      stdout.write("quanto vc quer depositar: ");
      double valor = double.parse(stdin.readLineSync()!);
      conta.depositar(valor);
    } else if (opcao == "3") {
      conta.imprimirSaldo();
    } else if (opcao == "4") {
      print("falou vlw");
      break;
    } else {
      print("opcao errada, tenta dnv");
    }
  }
}
