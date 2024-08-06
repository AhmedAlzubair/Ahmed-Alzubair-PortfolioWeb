import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/Responsive/responsive.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/const/constants.dart';
class TextTitle extends StatelessWidget {
  const TextTitle({Key? key, required this.title, required this.text,}) : super(key: key);
  final String title;
  final String text;


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (controller) =>  Row(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [

          Text(title,style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: controller.textColor,
            fontSize: !Responsive.isDesktop(context)?Responsive.isLargeMobile(context)?20:30:50,
          ),),
          const SizedBox(width: 6,),
          ShaderMask(shaderCallback: (bounds) =>const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors:[
                Colors.pink,
                Colors.cyanAccent
              ] ).createShader(bounds),
          child: Text(text,style: Theme.of(context).textTheme.headlineLarge!.copyWith(
      fontWeight: FontWeight.bold,
            color: white,
            fontSize: !Responsive.isDesktop(context)?Responsive.isLargeMobile(context)?20:30:50,
      ),),
          ),
        ],
      ),
    );
  }
}
