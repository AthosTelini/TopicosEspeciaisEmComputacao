class Cliente {
  String nome;
  int codigo;

  Cliente(this.nome, this.codigo);

  void mostrarDados() {
    print("Nome: $nome | Código: $codigo");
  }
}

void main() {
  Cliente c1 = Cliente("Maria", 101);
  Cliente c2 = Cliente("João", 102);

  c1.mostrarDados();
  c2.mostrarDados();
}