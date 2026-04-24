import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';
import '../../core/functions/checkInternet.dart';
import '../../core/helper/route_helper.dart';
import '../../core/widget/custom_snackbar.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  LoginControllerImp();
  @override
  login() async {
    OverlayLoadingProgress.start();
    if (await CheckInternet.checkInternet()) {
      var formdata = formstate.currentState;
      if (formdata == null || !formdata.validate()) {
        showCustomSnackBar(
          'Please fill in all required fields'.tr,
          isError: true,
        );
        OverlayLoadingProgress.stop();

        return;
      }
      OverlayLoadingProgress.stop();
      Get.toNamed(RouteHelper.signIn);
    } else {
      OverlayLoadingProgress.stop();
      showCustomSnackBar('Check the internet connection'.tr, isError: true);
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(RouteHelper.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {}
}
