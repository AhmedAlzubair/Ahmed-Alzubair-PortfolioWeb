import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/Responsive/responsive.dart';
import '../../../Core/const/appImage.dart';
import '../../../Core/const/constants.dart';
import 'logoAuth.dart';


class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 400, this.width = 400})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}
class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final value = _controller.value;
          return Transform.translate(
              offset: Offset(0, 2 * value), // Move the container up and down
              child: Container(
                height: widget.height!,
                width: widget.width!,
                padding: const EdgeInsets.all(defaultPadding ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient:  LinearGradient(colors: [
                    controller.bgColor,
                    controller.textColor,
                  ]),
                  boxShadow:  [
                    BoxShadow(
                      color:  controller.bgColor,
                      offset:const Offset(-2, 0),
                      blurRadius: 20,
                    ),
                    BoxShadow(
                      color: controller.textColor,
                      offset:const Offset(2, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child:  const LogoAuth(),
                //Container(
                 // alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   color: Colors.black,
                  //   borderRadius: BorderRadius.circular(40),
                  // ),
                  // child: const LogoAuth()
      
                  // Image.asset(
                  //   AppImage.logo,
                  //   // width: 300,
                  //   // height: 300,
                  //   height: Responsive.isLargeMobile(context)
                  //       ? MediaQuery.sizeOf(context).width * 0.3
                  //       : Responsive.isTablet(context)
                  //       ? MediaQuery.sizeOf(context).width * 0.14
                  //       : 150,
                  //   width: Responsive.isLargeMobile(context)
                  //       ? MediaQuery.sizeOf(context).width * 0.3
                  //       : Responsive.isTablet(context)
                  //       ? MediaQuery.sizeOf(context).width * 0.14
                  //       : 150,
                  //
                  //   fit: BoxFit.cover,
                  // ),
               // ),
      
              )
          );
        },
      ),
    );
  }
}
