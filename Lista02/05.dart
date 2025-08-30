class Banco {
  String nome;

  Banco(this.nome);
}

class Conta extends Banco {
  String tipo;
  int numero;
  String nomeCliente;
  double saldo;

  Conta(String nomeBanco, this.tipo, this.numero, this.nomeCliente, this.saldo)
      : super(nomeBanco);

  void dados() {
    print("banco: $nome");
    print("tipo conta: $tipo");
    print("numero: $numero");
    print("cliente: $nomeCliente");
    print("saldo: $saldo");
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("sacou $valor");
    } else {
      print("nao tem saldo suficiente");
    }
  }

  void depositar(double valor) {
    saldo += valor;
    print("depositou $valor");
  }
}

void main() {
  Conta c1 = Conta("Banco Dart", "corrente", 123, "Maria", 500);

  c1.dados();
  c1.depositar(250);
  c1.sacar(100);
  c1.dados();
}
