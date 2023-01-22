import 'package:flutter/material.dart';

import '../../../../Model/product_model.dart';




class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Aristokraitk El Çantası',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(children: [
                      const TextSpan(text: 'Fiyat\n'),
                      TextSpan(
                          text: '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold))
                    ])),
              ),
              const SizedBox(
                width: 100,
              ),
              Expanded(
                  child: Hero(tag: '${product.id}',
                    child: Image.asset(
                                  product.image,
                                  fit: BoxFit.fill,
                                ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
