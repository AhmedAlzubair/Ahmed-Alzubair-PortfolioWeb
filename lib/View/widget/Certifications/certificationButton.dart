import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/const/constants.dart';
class CertificationButton extends StatelessWidget {
  const CertificationButton({Key? key, required this.text, required this.icon}) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
        HomeController controller2= Get.find();
    return  InkWell(
      onTap: () {
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        width: 150,
        height: 40,
        duration:const Duration(milliseconds: 200),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
           color: controller2.bgColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style:const TextStyle(color: amber,fontSize: 12,fontWeight: FontWeight.bold),),
            const SizedBox(width: 5,),
            Icon(
              icon,color: amber,size: 12,
            )
          ],
        ),
      ),
    );
  }
}
