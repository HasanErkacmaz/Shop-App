// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import 'package:shop_app/view/detail/products/components/product_title_with_image.dart';

import '../../../../Model/product_model.dart';
import 'add_to_cart.dart';

import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class DetailBody extends StatelessWidget {
  final Product product;
  const DetailBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.12, left: 20, right: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: 10),
                      Description(product: product),
                      const SizedBox(height: 10),
                      const CounterWithFavButton(),
                      const SizedBox(height: 10),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
