import 'package:cofi_food/theme.dart';
import 'package:flutter/material.dart';

class OrderAndAdd extends StatelessWidget {
  const OrderAndAdd({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/Order Pack.png',
          width: 67,
        ),
       const SizedBox(
          width: 13,
        ),
        GestureDetector(
          child: Container(
            width: 220,
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: colorTheme),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ADD TO BAG',
                    style: semibboldText,
                  ),
                  Container(
                    height: 27,
                    width: 1,
                    color: Colors.white,
                  ),
                  Text(
                    '\$ 5.99',
                    style: semibboldText,
                  )
                ]),
          ),
        )
      ],
    );
  }
}
