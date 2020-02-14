import '../modelo/cliente.dart';
import '../modelo/item.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';

void main() {
  var venda = Venda(
    cliente: Cliente(
      nome: 'Icaro Jobs',
      cpf: '222.222.222-22',
    ),
    itens: <Item> [
      Item(
        quantidade: 2,
        produto: Produto(
          codigo: 1,
          nome: 'Mouse',
          preco: 29.90,
          desconto: 0.1,
        ),
      ),
      Item(
        quantidade: 5,
        produto: Produto(
          codigo: 2,
          nome: 'WebCam',
          preco: 39.90,
          desconto: 0.5,
        ),
      ),
    ],
  );

  // Resultado
  print('Cliente: ${venda.cliente.nome}, Valor Total em Itens: R\$ ${venda.valorTotal}, Item1: ${venda.itens[0].produto.nome}, Item2: ${venda.itens[1].produto.nome}');
}