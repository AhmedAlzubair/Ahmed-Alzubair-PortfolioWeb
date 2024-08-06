import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/const/constants.dart';

class ConnectButton extends StatelessWidget {
   ConnectButton({super.key, required this.text, required this.icon, this.onTap});
  final String text;
  final IconData icon;
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
              width: 130,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Icon(
                    icon,
                    color: Colors.greenAccent,
                    size: 20,
                  ),
                  const SizedBox(width: defaultPadding / 4),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: controller.bgColor,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
