import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Controller/homeController.dart';

import '../../../Core/const/appImage.dart';
import '../../../Core/const/constants.dart';
import 'listInfoText.dart';
import 'personalSkills.dart';
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    GetBuilder<HomeController>(
              builder: (controller) => Column(
        children: [
          //Center(child: IconButton(icon:Icon(Icons.dark_mode_outlined) ,onPressed: (){},),),
          ListInfoText(title: 'Contact', text: '+967782217340',color: controller.textColor,),
          ListInfoText(title: 'Email', text: 'ahmedalzubair79@gmail.com',color: controller.textColor),
          //ListInfoText(title: 'LinkedIn', text: 'https://www.linkedin.com/in/ahmed-alzubair-06024128a',color: controller.textColor),
          ListInfoText(title: 'Github', text: '@AhmedAlzubair',color: controller.textColor),
         const SizedBox(
            height: defaultPadding,
          ),
          Text('Skills',style: TextStyle(color:controller.isblack? Colors.white:Colors.black,fontWeight: FontWeight.bold),),
        const  SizedBox(
            height: defaultPadding,
          ),
          PersonalSkills(percentage: 0.8, title: 'Flutter',image:AppImage.flutter ,color: controller.textColor),
          PersonalSkills(percentage: 0.9, title: 'Dart',image: AppImage.dart,color: controller.textColor),
          PersonalSkills(percentage: 0.8, title: 'Firebase',image: AppImage.firebase,color: controller.textColor),
          PersonalSkills(percentage: 0.85, title: 'Sqlite',image: AppImage.dart,color: controller.textColor),
          PersonalSkills(percentage: 0.8, title: 'Responsive Design',image: AppImage.flutter,color: controller.textColor),
          PersonalSkills(percentage: 0.9, title: 'Clean Architecture',image: AppImage.dart,color: controller.textColor),
          PersonalSkills(percentage: 0.8, title: 'Bloc',image: AppImage.bloc,color: controller.textColor),
          PersonalSkills(percentage: 0.93, title: 'Gitx',image: AppImage.dart,color: controller.textColor),
          PersonalSkills(percentage: 0.80, title: 'Java',image: AppImage.java,color: controller.textColor),
          PersonalSkills(percentage: 0.80, title: 'Python',image: AppImage.python,color: controller.textColor),
        ],
      ),
    );
  }
}
