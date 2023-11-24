import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController {
  final localStorage = GetStorage();
  var appVersion = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(
        Duration(seconds: 3), () => Get.offNamed(AppRoutes.welcomePage));
    super.onReady();
  }
}
