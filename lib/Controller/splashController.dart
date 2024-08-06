 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/router.dart';

class SplashController extends GetxController {
// AnimatedContainer animatedContainer=AnimatedContainer(
//   duration: const Duration(milliseconds: 1000,),
// );
// AnimationController animatedContainer=AnimationController(
// //vsync:this ,
// duration: const Duration(milliseconds: 1000,),
//
// )..repeat(reverse: true);
// final AnimationController animatedContainer = AnimationController(
//   vsync: Get.find<TickerProviderStateMixin>(),
//   duration: const Duration(milliseconds: 1000),
// )..repeat(reverse: true);
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(const Duration(seconds: 3), () { Get.toNamed(AppRouter.home);});

  }
}