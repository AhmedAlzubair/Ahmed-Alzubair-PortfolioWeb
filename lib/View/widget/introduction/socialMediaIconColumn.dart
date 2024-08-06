import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../../Core/const/appImage.dart';
import 'socialMediaIcon.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SocialMediaIcon(icon: AppImage.linkedin,onTap: ()=> launchUrl(Uri.parse('https://www.linkedin.com/in/hamad-anwar/')),),  
        SocialMediaIcon(icon: AppImage.github,onTap: () => launchUrl(Uri.parse('https://github.com/Hamad-Anwar')),),
         SocialMediaIcon(icon: AppImage.dribble,),
         SocialMediaIcon(icon: AppImage.twitter),
         SocialMediaIcon(icon: AppImage.linkedin),
      ],
    );
  }
}