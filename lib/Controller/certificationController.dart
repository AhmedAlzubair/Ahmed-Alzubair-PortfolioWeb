
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Core/services/services.dart';

class CertificationController extends GetxController{
  MyServices myServices = Get.find();
  Color textColor = Colors.white;
  bool isblack = true;
  RxList<bool> hovers=[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;
  onHover(int index,bool value){
    hovers[index]=value;
  }
  getIniti() {
    isblack = myServices.sharedPreferences.getBool("isblack") ?? true;
    if (isblack == true) {
      textColor = Colors.white;
    } else {
      textColor = Colors.black;
      // isblack = true;
    }
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getIniti();
   // textColor= myServices.sharedPreferences.getString("textColor") as Color;
  }
}