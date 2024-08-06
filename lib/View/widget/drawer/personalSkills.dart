import 'package:flutter/material.dart';
import 'package:myprofilapp/Core/const/appImage.dart';

import '../../../Core/const/constants.dart';
import 'listInfoText.dart';

class PersonalSkills extends StatelessWidget {
  final double percentage;
  final String title;
  final String image;
  final Color? color;

  const PersonalSkills({
    Key? key,
    required this.percentage,
    required this.title,
    required this.image, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: percentage),
      duration: const Duration(seconds: 2),
      builder: (context, value, child) => Column(
        children: [
          ListInfoText(
            color: color,
              title: title,
              text: "${(value * 100).toInt().toString()}%",
              loading:
                  Image.asset(image, height: 15, width: 15, fit: BoxFit.cover)),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          LinearProgressIndicator(
            value: value,
            backgroundColor: Colors.black,
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
