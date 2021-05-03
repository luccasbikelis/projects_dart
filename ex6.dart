// @dart=2.9
// 2. Escreva uma classe que represente um carrinho de compras de supermercado. Nele deve ser armazenado uma lista de produtos.
// Um produto deve conter: nome e preço.
// Forneça os membros da classe a seguir:

// a) Um método que permita adicionar produtos ao seu carrinho de compras.
// b) Um método que permita remover produtos do carrinho.
// d) Um método que permita exibir os itens produtos que tenho no carrinho e sua quantidade.

// c) Um método que permita adicionar desconto ao valor total compra. (utilizando porcentagem)
// e) Um método que permita exibir o valor total a pagar.
// e) Um método que receba o valor pago pelo cliente e exiba se a compra foi realizada com sucesso ou se tem direito a um valor de troco ou se falta dinheiro para efetuar pagamento.
// Se sucesso, limpe o carrinho de compras.

main() {
  CarrinhoCompras carrinho1 = CarrinhoCompras("Carrinho 1");
  Produto nutela = Produto("Nutela", 50);
  Produto salgadinho = Produto("salgadinho", 50);

  carrinho1.adicionarProduto(nutela);
  carrinho1.adicionarProduto(salgadinho);
  carrinho1.produtos.forEach(print);

  // carrinho1.removerProduto(nutela);
  // print(carrinho1.produtos.first.mostrarProduto());

  int valorTotal = carrinho1.valorTotal();
  print('O valor total dos itens do carrinho é: ${valorTotal}');

  double desconto = carrinho1.calcularDesconto(10);
  print("Foi atribuido um desconto de 10%, total a pagar: ${desconto}");

  String compraFinalizada = carrinho1.compraFinalizada(100);
  print('${compraFinalizada}');
}

class CarrinhoCompras {
  List<Produto> produtos = [];
  String name;

  CarrinhoCompras(this.name);

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
  }

  void removerProduto(Produto produto) {
    produtos.remove(produto);
  }

  int valorTotal() {
    int soma = 0;
    produtos.forEach((produto) {
      soma += produto.price;
    });
    return soma;
  }

  double calcularDesconto(double porcentagem) {
    if (porcentagem < 0 || porcentagem > 100) {
      // throw = return;
      throw 'Porcentagem invalida';
    }

    var total = this.valorTotal();

    var desconto = total / 100 * porcentagem;

    return total - desconto;
  }

  String compraFinalizada(double pagamento) {
    var total = this.valorTotal();

    if (pagamento < total) {
      throw 'Valor menor que o total de $total';
    }

    if (pagamento > total) {
      produtos.clear();
      return 'Pagamento realizado com um troco de ${pagamento - total}';
    }

    produtos.clear();
    return 'Pagamento realizado sem troco';
  }
}

class Produto {
  String name;
  int price;

  Produto(this.name, this.price);

  String toString() {
    return ' Nome: $name | Preço: $price ';
  }
}
