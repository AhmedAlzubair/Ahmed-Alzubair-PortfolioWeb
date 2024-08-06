
import 'package:flutter/material.dart';
import 'package:myprofilapp/View/widget/splashWidget/logoAuth.dart';

import '../../../Core/Responsive/responsive.dart';
import '../../../Core/const/appImage.dart';
import '../../../Core/const/constants.dart';

class ProfilLogo extends StatelessWidget {
  final Color? color;
  const ProfilLogo({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       // const Spacer(flex: 2,),
   const SizedBox(height: 5,),
    const  LogoAuth(),
    //   CircleAvatar(
    //       radius: 100,
    //       //backgroundColor: Colors.red,
    //       child: Padding(
    //         padding: const EdgeInsets.all(0), // Border radius
    //         child: ClipOval(
    //           child:
    //           Image.asset(
    //             AppImage.logo,
    //           ),
    //         ),
    //       )),

        const SizedBox(height: 10,),
        Center(child: Text('Ahmed Alzubair',style: Theme.of(context).textTheme.titleSmall!.copyWith(color:color ),)),
        const SizedBox(height: defaultPadding/4,),
        const Text('Flutter Developer & The Student of\n IT Engineering',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w200,
              height: 1.5
          ),),
        //const Spacer(flex: 2,),
      ],
    );
  }
}
