import 'dart:io';

void main() {
  print("Serie de Fibonacci ate o 15º termo:");

  int anterior = 1;
  int atual = 1;

  stdout.write("$anterior, $atual");

  for (int i = 3; i <= 15; i++) {
    int proximo = anterior + atual;

    stdout.write(", $proximo");

    anterior = atual;
    atual = proximo;
  }

  print("");
}
