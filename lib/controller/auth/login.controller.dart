import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';
import '../../core/helper/route_helper.dart';
import '../../core/widget/custom_snackbar.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late GlobalKey<FormState> formKey;
  late TextEditingController email;
  late TextEditingController password;

  LoginControllerImp();
  @override
  login() async {
    OverlayLoadingProgress.start();
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      OverlayLoadingProgress.stop();
    Get.offAllNamed(RouteHelper.homeScreenStart);

    }else{ showCustomSnackBar(
        'Please fill in all required fields'.tr,
        isError: true,
      );

      OverlayLoadingProgress.stop();
 
    }
  
  }

  @override
  goToSignUp() {
    Get.offNamed(RouteHelper.signUpChooseScreen);
  }

  @override
  void onInit() {
    formKey = GlobalKey<FormState>();
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
