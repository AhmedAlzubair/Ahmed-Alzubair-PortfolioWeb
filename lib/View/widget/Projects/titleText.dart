import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/constants.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/Responsive/responsive.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.first, required this.second,});
  final String first;
  final String second;
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (controller) =>  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(first,style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: controller.textColor,
          fontSize: !Responsive.isDesktop(context)?Responsive.isLargeMobile(context)?20:30:50,
          fontWeight: FontWeight.bold
        ),
        ),
        const SizedBox(width: 6,),
        // kIsWeb&&Responsive.isDesktop(context)?
        ShaderMask(shaderCallback: (bounds) =>const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors:[Colors.pink,Colors.cyanAccent]).createShader(bounds),
          child: Text(second,style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: white,
          fontSize: !Responsive.isDesktop(context)?Responsive.isLargeMobile(context)?20:30:50,
          fontWeight: FontWeight.bold)),

          )
          // :
          //  Text(second,style: Theme.of(context).textTheme.titleMedium!.copyWith(
          // color: controller.textColor,
          // fontSize: !Responsive.isDesktop(context)?Responsive.isLargeMobile(context)?20:30:50,
          // fontWeight: FontWeight.bold)),

        ],
      ),
    );
  }
}
