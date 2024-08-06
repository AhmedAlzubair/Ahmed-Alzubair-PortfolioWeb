import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/certificationController.dart';
import '../../Core/Responsive/responsive.dart';
import '../../Core/const/constants.dart';
import '../widget/Certifications/certificationGrid.dart';
import '../widget/Certifications/textTitle.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});

  @override
  Widget build(BuildContext context) {
   final controller= Get.put(CertificationController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(Responsive.isLargeMobile(context))const SizedBox(
          height: defaultPadding,
        ),
        const TextTitle(title: "Certifications & ",text: "License",),
        const SizedBox(
          height: defaultPadding,
        ),
        const  Expanded(child: Responsive(
          extraLargeScreen:CertificationGrid(count: 4) ,
          desktop: CertificationGrid(count: 3,),
          tablet:CertificationGrid(count: 2,ratio: 1.7,) ,
          largeMobile: CertificationGrid(count: 1,ratio: 1.9,),
          mobile: CertificationGrid(count: 1,ratio: 1.5,),
        ))

      ],
    );
  }
}