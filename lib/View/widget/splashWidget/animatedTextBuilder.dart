
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../Core/const/constants.dart';

class AnimatedTextBuilder extends StatelessWidget {
  const AnimatedTextBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(
          tween:Tween(begin: 0.0,end: 1.0),
          duration:const Duration(seconds: 2),
          builder: (context, value, child) =>Column(
            children: [
              LinearProgressIndicator(
                backgroundColor:amber,
                color: primaryColor2,
                value: value,
              ),
            const  SizedBox(height: defaultPadding/2,),
              Text('${(value * 100).toInt()}%',style:const TextStyle(

                  color:amber,fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(color: white,blurRadius: 10 , offset: Offset(2,2)),
                    Shadow(color: amber,blurRadius: 10 , offset: Offset(-2,-2)),
                  ]

              ),)
            ],
          ),
      ),
    );
  }
}
