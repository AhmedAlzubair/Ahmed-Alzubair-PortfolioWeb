
import 'package:flutter/material.dart';

import '../../../Core/Responsive/responsive.dart';
import '../../../Core/const/appImage.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      CircleAvatar(
          radius: 60,
          //backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(0), // Border radius
            child: ClipOval(
              child:
              // Image.asset(
              //   AppImage.logo,
              // ),
              Image.asset(
                AppImage.logo,
                // width: 300,
                // height: 300,
                height: Responsive.isLargeMobile(context)
                    ? 200
                    : Responsive.isTablet(context)
                    ? 400
                    : 400,
                width: Responsive.isLargeMobile(context)
                    ? 200
                    : Responsive.isTablet(context)
                    ? 400
                    : 400,

                fit: BoxFit.cover,
              ),

            ),
          ));
      // CircleAvatar(
      //   radius: 30,
      //
      //   backgroundColor: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.all(0), // Border radius
      //     child: ClipOval(
      //       child:
      //       // Image.asset(
      //       //   AppImage.logo,
      //       //   height: 150,
      //       //   width: 150,
      //       //   fit: BoxFit.fill,
      //       // ),

      //
  }
}
