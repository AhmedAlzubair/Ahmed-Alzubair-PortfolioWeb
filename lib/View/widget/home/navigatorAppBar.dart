import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Controller/homeController.dart';
import 'package:myprofilapp/Core/const/appImage.dart';

import '../../../Core/Responsive/responsive.dart';
import '../../../Core/const/constants.dart';
class NavigatorAppBar extends StatelessWidget {
  const NavigatorAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) =>
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(defaultPadding),
              //child: Responsive.isLargeMobile(context)?,
            ),
           ...List.generate(controller.bottomappbar.length, (index) =>  TextButton(onPressed: (){controller.onCheang(index);}, child: Text(controller.bottomappbar[index]['title'])))

          ],
        ),
      ),
    );
  }
}
