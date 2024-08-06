import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Controller/homeController.dart';
import '../../../data/model/project.dart';

class ProjectLinks extends StatelessWidget {
  const ProjectLinks({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
     HomeController controller2= Get.find();
    return Row(
      children: [
          Text("Check on Github",style: TextStyle(color: controller2.bgColor,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
       const Spacer(),
       TextButton(onPressed: (){
          launchUrl(Uri.parse(projectList[index].link));
       }, 
       child: const Text("Read More >>",style: TextStyle(color: amber,overflow: TextOverflow.ellipsis,fontWeight: FontWeight.bold),),
       
        ),
      ],
    );
  }
}
