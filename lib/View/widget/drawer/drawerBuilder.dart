import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/const/appImage.dart';
import '../../../Core/const/constants.dart';
import '../splashWidget/logoAuth.dart';
import 'personalInfo.dart';
import 'profilLogo.dart';

class DrawerCustomBuilder extends StatelessWidget {
  const DrawerCustomBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HomeController controller=Get.find();
    return   GetBuilder<HomeController>(
              builder: (controller) => Container(
        //margin:const EdgeInsets.all(10),
        color:controller.bgColor ,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 10,
            ),
            // const  LogoAuth(),
      
             ProfilLogo(color: controller.textColor,),
             Center(
                      child: IconButton(
                          icon: controller.isblack
                              ? Icon(Icons.light_mode_outlined,color: controller.textColor,)
                              : Icon(Icons.dark_mode_outlined,color: controller.textColor),
                          onPressed: () {
                            controller.onCheangColor(controller.isblack);
                          }),
                    ),
            const SizedBox(
              height: 10,
            ),
      
            // const Spacer(
            //   flex: 2,
            // ),
            const PersonalInfo(),
          ],
        ),
      ),
    );
  }
}
