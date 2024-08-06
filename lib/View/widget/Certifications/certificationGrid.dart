import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/certificationController.dart';
import '../../../Core/const/constants.dart';
import '../../../data/model/certificate_model.dart';
import 'certificationContent.dart';
class CertificationGrid  extends StatelessWidget {
  const CertificationGrid ({Key? key, this.count=3,  this.ratio=1.3}) : super(key: key);
  final int count;
  final double ratio;

  @override
  Widget build(BuildContext context) {

    return GetBuilder<CertificationController>(
        builder: (controller) => GridView.builder(
      itemCount: certificateList.length,
    //  padding:const EdgeInsets.symmetric(horizontal: 30),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          childAspectRatio: ratio
        ),
    itemBuilder: (context, index) => Obx(() => AnimatedContainer(duration:const Duration(milliseconds: 500),
    //padding:const EdgeInsets.symmetric(horizontal:defaultPadding ,vertical:defaultPadding ),
      margin:const EdgeInsets.symmetric(vertical:defaultPadding ,horizontal:defaultPadding ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        gradient:const LinearGradient(
          colors: [
            white,
            black
          ],
        ),
        boxShadow: [
          BoxShadow(color:white ,offset:const Offset(-2, 0),blurRadius:controller.hovers[index]?20:10),
          BoxShadow(color:black ,offset:const Offset(2, 0),blurRadius: controller.hovers[index]?20:10)
        ]
      ),
      child: CertificationContent(index: index),
    ),
    ),
    ),
    );
  }
}
