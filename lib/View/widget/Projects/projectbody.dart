import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Controller/projectController.dart';
import '../../../Core/const/constants.dart';
import '../../../Core/function/imageviewer.dart';
import '../../../data/model/project.dart';
import '../../screen/projectdetails.dart';
import 'projectContent.dart';

class Projectbody extends StatelessWidget {
  const Projectbody({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    // Get.put(ProjectController());
        HomeController controller2= Get.find();
    return GetBuilder<ProjectController>(
      builder: (controller) => InkWell(
        onHover: (value) {
           controller.onHover(index, value);
        },
        onTap: () {
          controller.goTo(projectList[index].image.toString());
        // ProjectDetails(image:projectList[index].image);
         // ImageViewer(context,projectList[index].image);
          },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          padding: const EdgeInsets.only(
              left: defaultPadding, right: defaultPadding, top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: controller2.textColor),
          child: ProjectContent(
            index: index,
          ),
        ),
      ),
    );
  }
}
