void main() {
  Lanche xSalada = Lanche("X-Salada", 15);
  Lanche xBurguer = Lanche("X-Burguer", 10);
  Lanche xTudo = Lanche("X-Tudo", 18);

  Liquido refrigerante = Liquido("Refrigerante", 5);
  Liquido suco = Liquido("Suco", 3);
  Liquido agua = Liquido("Água", 2);

  List<Pedido> pedidos = [
    Pedido(xSalada, refrigerante),
    Pedido(xSalada, suco),
    Pedido(xSalada, agua),

    Pedido(xBurguer, refrigerante),
    Pedido(xBurguer, suco),
    Pedido(xBurguer, agua),

    Pedido(xTudo, refrigerante),
    Pedido(xTudo, suco),
    Pedido(xTudo, agua)
  ];

  for (Pedido pedido in pedidos) {
    pedido.printPedido();

  }
}

class Pedido {
  Lanche lanche;
  Liquido liquido;
  double? valorTotal;

  Pedido(this.lanche, this.liquido) {
    valorTotal = lanche.valor + liquido.valor;
  }

  void printPedido() {
    print('Pedido={\n\tlanche={${lanche.getLanche()}};\n\tliquido={${liquido.getLiquido()}};\n\tvalorTotal={$valorTotal}\n}\n');
  }
}

class Lanche {
  String nome;
  double valor;

  Lanche(this.nome, this.valor);

  String getLanche() {
    return 'lanche={nome=$nome;valor=$valor}';
  }
}

class Liquido {
  String nome;
  double valor;

  Liquido(this.nome, this.valor);

  String getLiquido() {
    return 'liquido={nome=$nome;valor=$valor}';
  }
}
