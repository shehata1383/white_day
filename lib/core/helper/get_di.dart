import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../../controller/LocalizationController.dart';
import '../../controller/auth/login.controller.dart';
import '../../controller/auth/signupController.dart';
import '../../controller/home/home_controll.dart';

Future<void> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);

  // Repository

  // Controller
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));
  Get.lazyPut(() => LoginControllerImp());
  Get.lazyPut(() => SignUpControllerImp());
  Get.lazyPut(() => HomeControllImp());
  // Get.lazyPut(() => NotificationController());

  // Retrieving localized data
}
