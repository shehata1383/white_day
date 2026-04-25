// ignore_for_file: file_names, depend_on_referenced_packages, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';
import '../../core/helper/route_helper.dart';
import '../../core/widget/custom_snackbar.dart';

abstract class Signupclientcontroller extends GetxController {
  signUp();
  goToSignIn();
}

class SignupclientcontrollerImp extends Signupclientcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController NameController;
  late TextEditingController EmailController;
  late TextEditingController PasswordController;
  late TextEditingController MobileNumberController;
  @override
  signUp() async {
    OverlayLoadingProgress.start();

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

  }

  @override
  goToSignIn() {
    Get.offNamed(RouteHelper.signIn);
  }

  @override
  void onInit() {
    EmailController = TextEditingController();
    PasswordController = TextEditingController();
    MobileNumberController = TextEditingController();
    NameController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    MobileNumberController.dispose();
    NameController.dispose();
    super.dispose();
  }
}
