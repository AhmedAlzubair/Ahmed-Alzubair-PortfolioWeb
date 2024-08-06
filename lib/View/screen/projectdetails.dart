import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

import '../../Controller/projectDetailsController.dart';
class ProjectDetails extends StatelessWidget {
   ProjectDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var controller= Get.put(ProjectDetailsController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
            child: Hero(
              tag: 'IMAGEVIEW',
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child:
               Container(
                      color: Colors.white,
                      child: Center(
                        child: PhotoView(imageProvider: AssetImage(controller.image)),
                      ),
                    )

              ),
            ),
          ),
    );

  }
}
