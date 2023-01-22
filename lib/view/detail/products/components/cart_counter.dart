import 'package:flutter/material.dart';


class CartCounterState extends StatefulWidget {
  const CartCounterState({super.key});

  @override
  State<CartCounterState> createState() => _CartCounterStateState();
}

class _CartCounterStateState extends State<CartCounterState> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        outlinedButtonComp(
          icon: Icons.remove,
          press: () {
           if (numOfItems > 1) {
              setState(() {
              numOfItems --;
            });
           }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        outlinedButtonComp(icon: Icons.add, press: () {
          setState(() {
            numOfItems++;
          });
        },)
      ],
    );
  }

  SizedBox outlinedButtonComp({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: (RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))), padding: EdgeInsets.zero),
          onPressed: press,
          child: Icon(icon)),
    );
  }
}