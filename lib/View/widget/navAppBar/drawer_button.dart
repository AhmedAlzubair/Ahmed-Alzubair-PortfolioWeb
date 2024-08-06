import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/const/constants.dart';

class DrawerButtonAppBar extends StatelessWidget {
   DrawerButtonAppBar({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(defaultPadding + 10),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultPadding),
                  color: controller.textColor
          
                  //                   gradient:  LinearGradient(colors: [
                  //   controller.bgColor,
                  //   controller.textColor,
                  // ]),
                  // boxShadow:  [
                  //   BoxShadow(
                  //     color:  controller.bgColor,
                  //     offset:const Offset(-2, 0),
                  //     blurRadius: 20,
                  //   ),
                  //   BoxShadow(
                  //     color: controller.textColor,
                  //     offset:const Offset(2, 0),
                  //     blurRadius: 20,
                  //   ),
                  // ],
                  ),
              child:    Image.asset('assets/images/triange_icon.png',color: controller.bgColor,)
              ),
        ),
      ),
    );
  }
}
