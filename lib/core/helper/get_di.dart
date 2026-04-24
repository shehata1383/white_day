import 'package:get/get.dart';

import '../../controller/auth/login.controller.dart';
import '../../controller/auth/signupController.dart';
import '../../controller/home/home_controll.dart';

Future<void> init() async {
  // Controller
  Get.lazyPut(() => LoginControllerImp());
  Get.lazyPut(() => SignUpControllerImp());
  Get.lazyPut(() => HomeControllImp());
}
