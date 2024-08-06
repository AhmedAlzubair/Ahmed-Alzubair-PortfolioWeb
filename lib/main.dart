import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Controller/homeController.dart';
import 'Core/const/apptheme.dart';
import 'Core/const/constants.dart';
import 'Core/services/services.dart';
import 'router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await  initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HomeController controller= Get.put(HomeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio ',
      theme: themeEnglish.copyWith(scaffoldBackgroundColor: controller.bgColor),
      // ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      //   scaffoldBackgroundColor: bgColor,
      //   textTheme: TextTheme(
      //           bodyLarge: const TextStyle(color: bodyTextColor),
      //     bodyMedium: const TextStyle(color: bodyTextColor),
          
          

      //   )
        // GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white,)
        //     .copyWith(
        //   bodyLarge: const TextStyle(color: bodyTextColor),
        //   bodyMedium: const TextStyle(color: bodyTextColor),
        // ),
     // ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    getPages: routers,
    );
  }
}
