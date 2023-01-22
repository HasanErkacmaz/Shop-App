import 'package:flutter/material.dart';

import '../../../../Model/product_model.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductCard({
    super.key,
      required this.product, required this.press,
  }); 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: '${product.id}',
                child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product.title,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Text(
            '\$${product.price}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
