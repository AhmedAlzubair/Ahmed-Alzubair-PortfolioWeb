import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Controller/projectController.dart';
import '../../../Core/const/constants.dart';
import '../../../data/model/project.dart';
import 'projectbody.dart';

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({super.key,  this.count=3,  this.ratio=1.3});
  final int count;
  final double ratio;
  @override
  Widget build(BuildContext context) {
   HomeController controller2= Get.find();
    return GetBuilder<ProjectController>(
      builder: (controller) => GridView.builder(
        itemCount: projectList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          childAspectRatio: ratio,
        ),
        itemBuilder: (context, index) =>
           Obx(() => AnimatedContainer(duration: const Duration(microseconds: 200),
              margin:const EdgeInsets.symmetric(vertical:defaultPadding ,horizontal: defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  
                  colors:[
                    controller2.bgColor,
                    controller2.textColor
                  ] ),
                  boxShadow: [
                    BoxShadow(color: controller2.bgColor,offset:const Offset(-2, 0),blurRadius: controller.hovers[index]? 20:10),
                    BoxShadow(color: controller2.textColor,offset:const Offset(2, 0),blurRadius: controller.hovers[index]? 20:10),
                  ]
              ),
              child: Projectbody(index:index),
              ),
            ),
      ),
    );
  }
}
