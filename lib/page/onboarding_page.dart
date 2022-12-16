import 'package:cofi_food/page/second_page.dart';
import 'package:cofi_food/theme.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/BG.png',
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 509,
                ),
                Center(
                  child: Text(
                    'Sweet &\nNaise Coffee',
                    textAlign: TextAlign.center,
                    style: boldText.copyWith(fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Naise Coffee can change The \natmosphere in the morning',
                  textAlign: TextAlign.center,
                  style: regularText.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: MediaQuery.of(context).size.width - (2 * 58),
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 7,
                        backgroundColor: colorTheme,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()));
                    },
                    child: Text(
                      'ORDER NOW',
                      style: semibboldText,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
