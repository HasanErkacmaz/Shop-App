// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shop_app/view/detail/details_view.dart';
import 'package:shop_app/view/home/products/components/product_cards.dart';

import '../../../../Model/product_model.dart';
import 'categries.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Women',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) => ProductCard(product: products[index] , 
              press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(product: products[index]) ))),
            ),
          ),
        )
      ],
    );
  }
}

