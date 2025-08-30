class Cliente {
  String nome;
  int codigo;

  Cliente(this.nome, this.codigo);
}

void main() {
  Cliente cliente = Cliente("Marcelo", 40028922);
  print("Cliente criado: ${cliente.nome}, Código: ${cliente.codigo}");
}