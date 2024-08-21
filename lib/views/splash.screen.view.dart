import 'package:flutter/material.dart';
import 'package:parkme/constants.dart';
import 'package:parkme/utils/index.dart';
import 'package:parkme/views/second.splash.view.dart';

import 'package:parkme/widgets/custom.filled.button.dart';
import 'package:parkme/widgets/logo.dart';
import 'package:parkme/widgets/main.container.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(
        child: Column(
          children: [
            const Spacer(),
            const AppLogo(),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: primaryBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Easiest way to\nfind you a ",
                        style: TextStyle(color: Colors.white, fontSize: 24)),
                    TextSpan(
                        text: "Parking Space",
                        style: TextStyle(
                            color: secondoryGreen,
                            fontSize: 24,
                            fontWeight: FontWeight.bold))
                  ])),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Looking to park your vehicle and grant a sage place? you are at the right stop",
                    style: TextStyle(
                      color: lightGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: CustomButton(
                      width: 400,
                      text: "Next",
                      onPressed: () {
                        context.navigator(context, const SecondSplashView());
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
