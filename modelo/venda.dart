import './cliente.dart';
import './item.dart';

class Venda {
  Cliente cliente;
  List<Item> itens;

  Venda({ this.cliente, this.itens = const [] });

  double get valorTotal {
    return 
      itens
        .map( (i) => i.quantidade * i.preco )
        .reduce( (total, atual) => total + atual );
  }
}