import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/Responsive/responsive.dart';
import '../../../Core/const/constants.dart';
import '../../../data/model/project.dart';
import 'projectLink.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
     HomeController controller2= Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: controller2.bgColor, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // Responsive.isMobile(context)
        //     ? const SizedBox(
        //         height: defaultPadding / 2,
        //       )
        //     : const SizedBox(
        //         height: defaultPadding,
        //       ),
        const SizedBox(height: defaultPadding,),
        // Text(
        //  projectList[index].description ,
        //   style: const TextStyle(color: grey,height: 1.5,overflow:TextOverflow.ellipsis ),
        //   maxLines: 3,
        //   overflow: TextOverflow.ellipsis,
        // ),
        Text(
          projectList[index].description,
          style: const TextStyle(color: Colors.grey, height: 1.5),
          maxLines: size.width > 700 && size.width < 750
              ? 3
              : size.width < 470
                  ? 4
                  : size.width > 600 && size.width < 700
                      ? 6
                      : size.width > 900 && size.width < 1060
                          ? 6
                          : 3,
          overflow: TextOverflow.ellipsis,
        ),
       const Spacer(),
       // const SizedBox(height: defaultPadding,),
        ProjectLinks(index: index,),
        const SizedBox(height: defaultPadding,),
      ],
    );
  }
}
