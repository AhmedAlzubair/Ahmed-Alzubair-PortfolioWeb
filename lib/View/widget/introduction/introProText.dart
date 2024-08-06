import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';

class IntroProText extends StatelessWidget {
  const IntroProText({super.key, required this.start, required this.end,});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (controller) =>  TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => Text(
           "My Personal Protofio",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: controller.textColor,
                fontWeight: FontWeight.w900,
                height: 0,
                fontSize: value,
              ),
        ),
      ),
    );
  }
}
