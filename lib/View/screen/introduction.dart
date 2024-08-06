

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/Responsive/responsive.dart';

import '../../Controller/homeController.dart';
import '../../Core/const/constants.dart';
import '../widget/introduction/introductionBody.dart';
import '../widget/introduction/socialMediaIconList.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (controller) => Row(

      children: [

        SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),

        // if(!Responsive.isLargeMobile(context))  DrawerButton(onPressed: () => Scaffold.of(context).openDrawer(),style:  ButtonStyle(
        //   backgroundColor: WidgetStatePropertyAll<Color>(controller.textColor),
        // ),),

        SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
        if(!Responsive.isLargeMobile(context))const SocialMediaIconList(),
         SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.07,
            ),
           const Expanded(child: IntroductionBody()),
      ],

      ),
    );
  }
}