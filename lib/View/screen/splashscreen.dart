
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/splashController.dart';
import '../../Core/const/constants.dart';
import '../widget/splashWidget/animatedTextBuilder.dart';
import '../widget/splashWidget/splashWidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Get.put(SplashController());
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100,height: 100,),
            SizedBox(height: defaultPadding,),
            AnimatedTextBuilder(),
          ],
        ),
      ),
    );
  }
}
