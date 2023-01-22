import 'package:flutter/material.dart';

import '../../../../Model/product_model.dart';




class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text('Renk'),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const ColorChose(color: Color(0xFF356C95), isSelected: true),
                  const ColorChose(color: Color(0xFFF8C078), isSelected: false),
                  const ColorChose(color: Color(0xFFA29B9B), isSelected: false)
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(style: const TextStyle(color: Colors.grey) ,children: [
            const TextSpan(text: 'Ölçü\n' ), 
            TextSpan(text: '${product.size} cm' , style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold))
          ]),),
        )
      ],
      
    );
  }
}



class ColorChose extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorChose({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 10),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration:
          BoxDecoration(shape: BoxShape.circle, border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
