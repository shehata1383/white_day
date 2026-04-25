import 'package:get/get.dart';

import '../../controller/auth/login.controller.dart';
import '../../controller/auth/signupClientController.dart';
import '../../controller/auth/signupVendorController.dart';
import '../../controller/home/home_controll.dart';

Future<void> init() async {
  // Controller
  Get.lazyPut(() => LoginControllerImp());
  Get.lazyPut(() => SignupclientcontrollerImp());
  Get.lazyPut(() => SignupvendorcontrollerImp());
  Get.lazyPut(() => HomeControllImp());
}
