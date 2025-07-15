import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});
  @override
  Widget build(BuildContext context) {
List<Product> products = [
Product("Apfel", 1.00),
Product("Brot", 2.39),
Product("Milch", 3.20),
Product("Chips", 5.00),
Product("Eis", 4.99)
];

    return ListView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      itemBuilder: (context, index){
        final product = products[index];
        return ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: Text(product.name),
          subtitle: Text("${product.price.toStringAsFixed(2)} €")
        );
      },
      
      );
      
      
  }
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}