import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/styles.dart';

void showCustomSnackBar(
  String? message, {
  bool isError = true,
  bool getXSnackBar = false,
}) {
  if (message != null && message.isNotEmpty) {
    if (getXSnackBar) {
      Get.showSnackbar(
        GetSnackBar(
          backgroundColor: isError ? Colors.red : Colors.green,
          message: message,
          maxWidth: 500,
          duration: const Duration(seconds: 5),
          snackStyle: SnackStyle.FLOATING,
          margin: const EdgeInsets.only(
            left: 12,
            right: 12,
            bottom: 100,
          ),
          borderRadius: 14,
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal,
        ),
      );
    } else {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.horizontal,
          margin: const EdgeInsets.only(
            right:12,
            top: 12,
            bottom: 12,
            left: 12,
          ),
          duration: const Duration(seconds: 1),
          backgroundColor: isError ? Colors.red : Colors.green,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Text(
            message,
            style: robotoMedium.copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }
}
