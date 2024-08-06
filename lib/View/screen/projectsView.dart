import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/constants.dart';

import '../../Controller/homeController.dart';
import '../../Controller/projectController.dart';
import '../../Core/Responsive/responsive.dart';
import '../widget/Projects/projectGrid.dart';
import '../widget/Projects/titleText.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key,});


  @override
  Widget build(BuildContext context) {
    Get.put(ProjectController());
   var controllerh= Get.put(HomeController());
    return GetBuilder<ProjectController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(
            first: "Latest",
            second: "Projects",

          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Expanded(
              child: Responsive(
            desktop: ProjectGrid(
              count: 3,
            ),
            extraLargeScreen: ProjectGrid(
              count: 4,
            ),
            largeMobile: ProjectGrid(
              count: 1,
              ratio: 1.9,
            ),
            mobile: ProjectGrid(
              count: 1,
              ratio: 1.4,
            ),
            tablet: ProjectGrid(
              count: 2,
              ratio: 1.4,
            ),
          ))
        ],
      ),
    );
  }
}
