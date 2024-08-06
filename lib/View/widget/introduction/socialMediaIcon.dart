import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/constants.dart';

import '../../../Controller/homeController.dart';

class SocialMediaIcon extends StatelessWidget {
  final String icon;
   final  Function()? onTap;
  const SocialMediaIcon({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return   GetBuilder<HomeController>(
      builder: (controller) =>  InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding*0.4),
          child: SvgPicture.asset(icon,width: 15,height: 15,color: controller.textColor,),
        ),
      ),
    );
  }
}
