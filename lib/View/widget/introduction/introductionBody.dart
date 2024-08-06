import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:myprofilapp/Core/const/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Controller/homeController.dart';
import '../../../Core/Responsive/responsive.dart';
import '../navAppBar/connect_button.dart';
import '../splashWidget/splashWidget.dart';
import 'animatedDescriptionText.dart';
import 'downloadButton.dart';
import 'introProText.dart';
import 'itroSubTitle.dart';

class IntroductionBody extends StatelessWidget {
  const IntroductionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GetBuilder<HomeController>(
      builder: (controller) => Row(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!Responsive.isDesktop(context))
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                    if (!Responsive.isDesktop(context))
                Row(
                  children: [
                     SizedBox(
                        width: size.width * 0.23,
                      ),
                    const AnimatedImageContainer(
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
                if (!Responsive.isDesktop(context))
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                // Text("My Personal Protofio",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: whiteColor,fontWeight: FontWeight.w900),),
              
                              const Responsive(
                    desktop: IntroProText(start: 40, end: 50),
                    largeMobile: IntroProText(start: 40, end: 35),
                    mobile: IntroProText(start: 35, end: 30),
                    tablet: IntroProText(start: 50, end: 40)),
                    if(kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
                const ItroSubTitle(),
                  const SizedBox(height: defaultPadding / 2),
                   const Responsive(
                  desktop: AnimatedDescriptionText(start: 14, end: 15),
                  largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                  mobile: AnimatedDescriptionText(start: 14, end: 12),
                  tablet: AnimatedDescriptionText(start: 17, end: 14),
                ),
               const  SizedBox(height: defaultPadding*2,),
                ConnectButton(text: "Download CV",icon:FontAwesomeIcons.download ,
                  onTap: () {
                    launchUrl(Uri.parse('https://drive.google.com/file/d/1fK8KQERw1mAvFyjry0OsjxX7x6K0TvSZ/view?usp=sharing'));
                 },),
              // const  DownloadButton(),
              ],
            ),
          ),
                  const Spacer(),
          if (Responsive.isDesktop(context)) const AnimatedImageContainer(
          ),
          const Spacer()
        ],
      ),
    );
  }
}
