import 'package:flutter/material.dart';

import '../../../Core/Responsive/responsive.dart';
import 'animatedSubtitleText.dart';

class ItroSubTitle extends StatelessWidget {
  const ItroSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Text("My Personal Protofio",style: Theme.of(context).textTheme.labelLarge,),
        Responsive(
          desktop: AnimatedSubtitleText(start:30 , end:40 ,  text: "Flutter",),
          largeMobile: AnimatedSubtitleText(start:30 , end:25 ,  text: "Flutter",),
          mobile: AnimatedSubtitleText(start:25 , end:20 ,  text: "Flutter",),
          tablet: AnimatedSubtitleText(start:40 , end:30 ,  text: "Flutter",),
        ),
          SizedBox(width: 10,),
        Responsive(
          desktop: AnimatedSubtitleText(start:30 , end:40 ,  text: "Developer",gradient: true,),
          largeMobile: AnimatedSubtitleText(start:30 , end:25 ,  text: "Developer",gradient: true),
          mobile: AnimatedSubtitleText(start:25 , end:20 ,  text: "Developer",gradient: true),
          tablet: AnimatedSubtitleText(start:40 , end:30 ,  text: "Developer",gradient: true),
        ),
       
     
  

      ],
    );
  }
}