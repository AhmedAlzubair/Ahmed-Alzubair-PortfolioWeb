import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/services/services.dart';

import '../Core/const/constants.dart';
import '../View/screen/certifications.dart';
import '../View/screen/home.dart';
import '../View/screen/introduction.dart';
import '../View/screen/projectsView.dart';

class HomeController extends GetxController {
  MyServices myServices = Get.find();
  String nameColor = "dark";
  String textCol = "white";
//  late bool isblack ;
//  late Color bgColor ;
//  late Color textColor ;
  bool isblack = true;
  Color bgColor = Colors.black;
  Color textColor = Colors.white;

  onCheangColor(bool isbg) {
    if (isbg == true) {
      nameColor = "white";
      textCol = "dark";
      bgColor = Colors.white;
      textColor = Colors.black;
      isblack = false;
    } else {
      nameColor = "dark";
      textCol = "white";
      bgColor = Colors.black;
      textColor = Colors.white;
      isblack = true;
    }
    myServices.sharedPreferences.setString("bgColor", nameColor);
    myServices.sharedPreferences.setString("textColor", textCol);
    myServices.sharedPreferences.setBool("isblack", isblack);

    update();
  }

  late PageController pageController;
  int currentIndex = 0;
  List pageList = [
    const Introduction(),
    ProjectsView(),
    Certifications(),
  ];
  onCheang(int index) {
    currentIndex = index;
        if (currentIndex > pageList.length - 1) {
      currentIndex = 0;
    }
    
     pageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    update();
  }

  next() {
    currentIndex++;
    // if (currentIndex > pageList.length - 1) {
    //   currentIndex = 0;
    // }
    
    //  pageController.animateToPage(currentIndex,
    //     duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    update();
  }

  List bottomappbar = [
    {"title": "Home"},
    {"title": "Projects"},
    {"title": "Certifications"},
    // {"title": "About us"},
    // {"title": "Achievements"}
  ];
  getIniti() {
    // nameColor = myServices.sharedPreferences.getString("bgColor")!?? "dark";
    // textCol = myServices.sharedPreferences.getString("textColor")!?? "white";
    isblack = myServices.sharedPreferences.getBool("isblack") ?? true;
    if (isblack == true) {
      // nameColor = "white";
      // textCol = "dark";
      bgColor = Colors.black;
      textColor = Colors.white;
    } else {
      // nameColor = "dark";
      // textCol = "white";
      bgColor = Colors.white;
      textColor = Colors.black;
      // isblack = true;
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController();
    getIniti();
  }
}
