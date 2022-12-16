import 'package:cofi_food/theme.dart';
import 'package:cofi_food/widget/combomenu_widget.dart';
import 'package:cofi_food/widget/order_and_add_widget.dart';
import 'package:cofi_food/widget/sizecup_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffD1E1E0),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                    ),
                    const Icon(
                      Icons.segment,
                      size: 24,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    'assets/caramel.png',
                    width: 192,
                    height: 195,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Caramel Machiatto',
                        style: semibboldText.copyWith(
                            color: colorTheme, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                        style: regularText.copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Size',
                  style:
                      semibboldText.copyWith(fontSize: 12, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizeCup(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Combo',
                  style:
                      semibboldText.copyWith(fontSize: 12, color: Colors.black),
                ),
                const SizedBox(
                  height: 12,
                ),
                const ComboMenu(),
                const SizedBox(
                  height: 54,
                ),
                const OrderAndAdd(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
