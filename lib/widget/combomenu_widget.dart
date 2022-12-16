import 'package:cofi_food/theme.dart';
import 'package:flutter/material.dart';

class ComboMenu extends StatelessWidget {
  const ComboMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 15),
      height: 80,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(
            'assets/Pict Food.png',
            width: 49,
            height: 28,
          ),
         const  SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CROISSANT',
                style: semibboldText.copyWith(color: Colors.black),
              ),
              Image.asset(
                'assets/Rattings.png',
                width: 95,
                height: 18,
              )
            ],
          ),
          const SizedBox(
            width: 106,
          ),
          Image.asset(
            'assets/Button Add.png',
            width: 24,
          )
        ],
      ),
    );
  }
}
