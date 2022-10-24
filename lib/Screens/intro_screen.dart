import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store/Widgets/custom_buttton.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonWidget(
                  msg: "Sign Up",
                  color: Colors.purple,
                  handelpress: () {
                    Navigator.of(context).pushNamed("/signup");
                  },
                ),
                CustomButtonWidget(
                  msg: "Sign in",
                  color: Colors.blue,
                  handelpress: () {},
                ),
                CustomButtonWidget(
                  msg: "Skip",
                  color: Colors.red,
                  handelpress: () {
                    Navigator.of(context).pushNamed("/students");
                  },
                )
              ]),
        ),
      ),
    );
  }
}
