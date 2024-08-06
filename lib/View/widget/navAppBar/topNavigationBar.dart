import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Controller/homeController.dart';
import '../../../Core/Responsive/responsive.dart';
import '../../../Core/const/constants.dart';
import 'connect_button.dart';
import 'drawer_button.dart';
import 'navigationButtonList.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (controller) => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            // Padding(
            //   padding: const EdgeInsets.all(defaultPadding),
            //   child: 
            //       TextButton(onPressed:() => Scaffold.of(context).openDrawer() ,style:  ButtonStyle(
            //     backgroundColor: WidgetStatePropertyAll<Color>(controller.textColor),
            //   ), child: Image.asset('assets/images/triange_icon.png',color: controller.bgColor,),)
                 
            // ),
            DrawerButtonAppBar(
               onTap: () => Scaffold.of(context).openDrawer(),

            ),
            // Padding(
            //   padding: const EdgeInsets.all(defaultPadding),
            //   child: !Responsive.isLargeMobile(context)
            //       ? TextButton(onPressed:() => Scaffold.of(context).openDrawer() ,style:  ButtonStyle(
            //     backgroundColor: WidgetStatePropertyAll<Color>(controller.textColor),
            //   ), child: Image.asset('assets/images/triange_icon.png',color: controller.bgColor,),)
            //       : DrawerButton(
            //           onPressed: () => Scaffold.of(context).openDrawer(),
            //         ),
            // ),
            // if(Responsive.isLargeMobile(context)) MenuButton(),
            const Spacer(
              flex: 2,
            ),
            if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
            const Spacer(
              flex: 2,
            ),
             ConnectButton(text: 'Whatsapp', icon: FontAwesomeIcons.whatsapp,
               onTap:  () {
              launchUrl(Uri.parse('https://wa.me/967782217340'));
            },),
            const Spacer(),
          ],

      ),
    );
  }
}
