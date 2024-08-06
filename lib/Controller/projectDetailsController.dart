
import 'package:get/get.dart';

class ProjectDetailsController extends GetxController{
  late  String image;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    image=Get.arguments['image'];
    update();
    print(image);
  }
}