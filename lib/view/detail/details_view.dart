import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/view/detail/products/components/detail_body.dart';

import '../../Model/product_model.dart';

class DetailView extends StatelessWidget {
  final Product product;
  const DetailView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: detailsAppBar(context),
      body:  DetailBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SizedBox(
              height: 28,
              child: SvgPicture.asset(
                'assets/icons/backpng.svg',
                color: Colors.white,
              ))),
      actions: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/icons/cart.svg')),
        IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/icons/search.svg')),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
