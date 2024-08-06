import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controller/certificationController.dart';
import '../../../Controller/homeController.dart';
import '../../../Core/const/constants.dart';
import '../../../data/model/certificate_model.dart';
import 'certificationButton.dart';
class CertificationContent extends StatelessWidget {
  const CertificationContent({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    HomeController controller2= Get.find();
    return GetBuilder<CertificationController>(
        builder: (controller) => InkWell(
          onHover: (value) {
           controller.onHover(index, value);
          },
          onTap: () {
            
          },
          borderRadius: BorderRadius.circular(30),
          child: AnimatedContainer(
            padding:const EdgeInsets.all(defaultPadding),
            width: double.infinity,
            height: double.infinity,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
            color: controller2.textColor,
              borderRadius: BorderRadius.circular(30),

            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(certificateList[index].name,style:Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color:controller2.bgColor ),maxLines: 1,),
                  const SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(certificateList[index].organization,style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
                    Text(certificateList[index].date,style:const TextStyle(fontSize: 12),),
                  ],
                ),
                  const SizedBox(height: defaultPadding/2,),
                  Text.rich(
                      TextSpan(
                          text: "Skills :", style: TextStyle(color:controller2.bgColor ),
                          children: [
                            TextSpan(text: certificateList[index].skills,style:const TextStyle(color: grey,overflow: TextOverflow.ellipsis)),
                          ]
                      )
                  ),
                  const SizedBox(height: defaultPadding,),

                  const CertificationButton(text: 'Credentials',icon: CupertinoIcons.arrow_turn_up_right,)
                ],
              ),
            ),
          ),

        ),
    
      
    );
  }
}
