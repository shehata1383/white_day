// // ignore_for_file: file_names, depend_on_referenced_packages, non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:overlay_kit/overlay_kit.dart';
// import '../../core/classes/status_request.dart';
// import '../../core/functions/checkInternet.dart';
// import '../../core/helper/route_helper.dart';
// import '../../core/model/auth_eesponse.dart';
// import '../../core/widget/custom_snackbar.dart';
// import '../../repository/auth/auth_repository.dart';

// abstract class SignUpController extends GetxController {
//   signUp();

//   goToSignIn();
// }

// class SignUpControllerImp extends SignUpController {
//   final AuthRepository authRepository;

//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//   late TextEditingController NameController;
//   late TextEditingController EmailController;
//   late TextEditingController PasswordController;
//   late TextEditingController ConfirmPassword;
//   late TextEditingController rePasswordController;

//   late PageController pageController;
//   late TextEditingController searchController;

//   UserSignUp? userAuth;
//   List data = [];

//   SignUpControllerImp({required this.authRepository});
//   late StatusRequest statusRequest;

//   @override
//   signUp() async {
//     DateTime now = DateTime.now().toUtc();
//     String formattedDate = DateFormat(
//       "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
//     ).format(now);

//     if (await CheckInternet.checkInternet()) {
//       var formdata = formstate.currentState;
//       OverlayLoadingProgress.start();

//       if (formdata!.validate()) {
//         statusRequest = StatusRequest.loading;

//         var response = await authRepository.register(
//           email: EmailController.text,
//           password: PasswordController.text,
//           passwordConfirmation: ConfirmPassword.text,
//           date: formattedDate,
//         );

//         if (PasswordController.text == ConfirmPassword.text) {
//           if (response.statusCode == 200) {
//             userAuth = UserSignUp.fromJson(response.body);
//             showCustomSnackBar("createAccount successfully".tr, isError: false);
//             Get.offAllNamed(RouteHelper.signIn);
//           } else if (response.statusCode != 200) {
//             if (response.body["exception"] != null) {
//               if (response.body["exception"]["Message"] ==
//                   "Incorrect password.") {
//                 showCustomSnackBar("Password Not Match".tr, isError: true);
//               }
//             } else if (response.body["message"] ==
//                 "PasswordsMustBeAtLeast8Characters") {
//               showCustomSnackBar(
//                 "PasswordsMustBeAtLeast8Characters".tr,
//                 isError: true,
//               );
//             } else if (response.body["message"] ==
//                 "PasswordsMustHaveAtLeastOneLowercaseAndOneUppercase") {
//               showCustomSnackBar(
//                 "PasswordsMustHaveAtLeastOneLowercaseAndOneUppercase".tr,
//                 isError: true,
//               );
//             } else {
//               if (response.body["exception"] != null) {
//                 showCustomSnackBar(
//                   response.body["exception"]["Message"],
//                   isError: true,
//                 );
//               } else if (response.body['message'] == "ErrorInEmailOrPassword") {
//                 showCustomSnackBar("Wrong email or password".tr, isError: true);
//               } else if (response.body['message'] == "EmailIsExist") {
//                 showCustomSnackBar(
//                   "This email has been used.".tr,
//                   isError: true,
//                 );
//                 showCustomSnackBar(
//                   'An error occurred. Please try again.'.tr,
//                   isError: true,
//                 );
//               }
//             }
//           }
//         } else {
//           showCustomSnackBar("Password Not Match".tr, isError: true);
//         }

//         update();
//       } else {
//         OverlayLoadingProgress.stop();
//         showCustomSnackBar('errorRepassword'.tr, isError: true);
//       }
//       OverlayLoadingProgress.stop();
//     } else {
//       OverlayLoadingProgress.stop();
//       showCustomSnackBar('Check the internet connection'.tr, isError: true);
//     }
//     OverlayLoadingProgress.stop();
//   }

//   @override
//   goToSignIn() {
//     Get.offNamed(RouteHelper.signIn);
//   }

//   @override
//   void onInit() {
//     pageController = PageController();
//     EmailController = TextEditingController();
//     PasswordController = TextEditingController();
//     rePasswordController = TextEditingController();
//     ConfirmPassword = TextEditingController();

//     super.onInit();
//   }

//   @override
//   void dispose() {
//     EmailController.dispose();
//     PasswordController.dispose();
//     ConfirmPassword.dispose();
//     rePasswordController.dispose();
//     super.dispose();
//   }
// }
