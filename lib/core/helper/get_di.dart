import 'package:get/get.dart';

import '../../controller/admin/add_new_section_controller.dart';
import '../../controller/auth/login.controller.dart';
import '../../controller/auth/signupClientController.dart';
import '../../controller/auth/signupVendorController.dart';
import '../../controller/home/home_controll.dart';
import '../../controller/vendor/add_vendor_controller.dart';
import '../../controller/vendor/dash_board_controller.dart';

Future<void> init() async {
  // Controller
  Get.lazyPut(() => LoginControllerImp());
  Get.lazyPut(() => SignupclientcontrollerImp());
  Get.lazyPut(() => SignupvendorcontrollerImp());
  Get.lazyPut(() => HomeControllImp());
  Get.lazyPut(() => AddNewSectionController());
  Get.lazyPut(() => DashBoardController());
  Get.lazyPut(() => AddVendorController());
}
