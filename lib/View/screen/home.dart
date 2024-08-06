import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/constants.dart';

import '../../Controller/homeController.dart';
import '../../Core/Responsive/responsive.dart';
import '../widget/drawer/drawerBuilder.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../widget/home/navigatorAppBar.dart';
import '../widget/navAppBar/navigationButtonList.dart';
import '../widget/navAppBar/topNavigationBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: controller.bgColor,
          // appBar: AppBar(
          //   backgroundColor: primaryColor2,
          // ),
          drawer: const DrawerCustomBuilder(),
          drawerScrimColor: black,
          body: Column(
            children: [
              kIsWeb && !Responsive.isLargeMobile(context)
                  ? const SizedBox(
                      height: defaultPadding * 2,
                    )
                  : const SizedBox(
                      height: defaultPadding / 2,
                    ),
              const SizedBox(
                height: 80,
                child: TopNavigationBar(),
              ),
              if (Responsive.isLargeMobile(context))
                const Row(
                  children: [
                      SizedBox(
                      height: defaultPadding ,
                    ),
                    Spacer(), NavigationButtonList(), Spacer()],
                ),
          
              Expanded(
                  flex: 10,
                  child: PageView(
                    onPageChanged: (value) {
                      controller.next();
                    },
                    scrollDirection: Axis.vertical,
                   physics: const NeverScrollableScrollPhysics(),
                    controller: controller.pageController,
                    children: [...controller.pageList],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
