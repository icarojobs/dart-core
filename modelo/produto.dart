class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({ this.codigo, this.nome, this.preco, this.desconto = 0 });

  double get precoComDesconto {
    return (1 - desconto) * preco;
  }
}

// void main() {
//   var produto = Produto(codigo: 1, nome: 'Prod. Teste', preco: 29.90, desconto: 0.5);
//   var desconto = produto.precoComDesconto;

//   print('Produto: ${produto.nome}, Preço: ${produto.preco}, Preço com Desconto: ${desconto}');
// }