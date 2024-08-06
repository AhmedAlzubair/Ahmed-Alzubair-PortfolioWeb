import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Row(
              children: [

                ...List.generate(
                    controller.bottomappbar.length,
                    (index) => TextButton(
                        onPressed: () {
                          controller.onCheang(index);
                        },
                        onHover: (value) {
                          
                        },
                        child: Text(controller.bottomappbar[index]['title'],
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: controller.textColor)
                                    )
                                    )
                                    )
              ],
            ),
          );
        },
      ),
    );
  }
}
