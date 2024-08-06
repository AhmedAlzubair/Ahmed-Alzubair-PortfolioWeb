import 'package:get/get.dart';

import 'Core/const/router.dart';
import 'View/screen/home.dart';
import 'View/screen/projectdetails.dart';
import 'View/screen/splashscreen.dart';
List<GetPage<dynamic>>? routers=[
 GetPage(name: '/', page:()=>const SplashScreen()) ,
 GetPage(name: AppRouter.home, page:()=>const Home()) ,
 GetPage(name: AppRouter.projectDetails, page:()=> ProjectDetails()) ,
];