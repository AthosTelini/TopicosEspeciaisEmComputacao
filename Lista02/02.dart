class Cliente {
  String nome;
  int codigo;

  Cliente(this.nome, this.codigo);
}

void main() {
  Cliente cliente1 = Cliente("Maria", 101);
  Cliente cliente2 = Cliente("João", 102);

  print("Cliente 1: ${cliente1.nome}, Código: ${cliente1.codigo}");
  print("Cliente 2: ${cliente2.nome}, Código: ${cliente2.codigo}");
}