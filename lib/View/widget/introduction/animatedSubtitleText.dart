import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/const/constants.dart';

class AnimatedSubtitleText extends StatelessWidget {
  const AnimatedSubtitleText(
      {super.key, required this.text, required this.start, required this.end,  this.gradient=false});
  final String text;
  final double start;
  final double end;
  final bool gradient;

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (controller) =>  TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: controller.textColor,
                fontWeight: FontWeight.w900,
                shadows:gradient? [
                  const Shadow(
                      color: primaryColor, offset: Offset(0, 2), blurRadius: 10),
                  const Shadow(
                      color: primaryColor, offset: Offset(0, -2), blurRadius: 10),
                ]:[],
                height: 0,
                fontSize: value,
              ),
        ),
      ),
    );
  }
}
