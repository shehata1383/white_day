import 'package:get/get.dart';

import '../../controller/auth/login.controller.dart';
import '../../features/admin/home_pages_admin.dart';
import '../../features/admin/pages/add_new_section_screen.dart';
import '../../features/auth/forgot password/forgot_password_screen.dart';
import '../../features/auth/forgot password/password_reset_successfilly_screen.dart';
import '../../features/auth/forgot password/reset_password_screen.dart';
import '../../features/auth/forgot password/verify_code_screen.dart';
import '../../features/auth/sign up/sign_up_choose_screen.dart';
import '../../features/auth/sign up/sign_up_vendor_screen.dart';
import '../../features/client/categories/catering/brides_breakfast_snak_packages.dart';
import '../../features/client/categories/relax_glow/relax_glow_package.dart';
import '../../features/client/categories/Artists/artist_screen.dart';
import '../../features/client/categories/WeddingHall/wedding_hall_screen.dart';
import '../../features/auth/sign in/sign_in_screen.dart';
import '../../features/auth/sign up/sign_up_client_screen.dart';
import '../../features/client/categories/bridesmaid/bridesmaid_screen.dart';
import '../../features/client/categories/emergency_bag/emergency_bag.dart';
import '../../features/client/categories/barbar_shop/barbar_shop_screen.dart';
import '../../features/client/categories/cars/cars_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/home/home_screen_start.dart';
import '../../features/client/categories/makeup artist/makeup_artist_screen.dart';
import '../../features/client/categories/photographer/photographer_screen.dart';
import '../../features/client/categories/suitStore/suit_store.dart';
import '../../features/client/categories/weddingDress/wedding_dress_screen.dart';
import '../../features/manager/home_pages_manager.dart';

class RouteHelper {
  static const String signIn = '/SignInScreen';
  static const String signUpClientScreen = '/SignUpClientScreen';
  static const String signUpChooseScreen = '/SignUpChooseScreen';
  static const String signUpVendorScreen = '/SignUpVendorScreen';
  static const String homeScreen = '/HomeScreen';
  static const String homeScreenStart = '/HomeScreenStart';
  static const String makeupArtistScreen = '/MakeupArtistScreen';
  static const String photograperScreen = '/PhotograperScreen';
  static const String weddingDressScreen = '/weddingDressScreen';
  static const String weddingHallScreen = '/weddingHallScreen';
  static const String suitStore = '/suitStore';
  static const String bookBridesmaidScreen = '/BookBridesmaidScreen';
  static const String emergencyBag = '/EmergencyBag';
  static const String barbarShopScreen = '/BarbarShopScreen';
  static const String artistScreen = '/artistScreen';
  static const String carsScreen = '/CarsScreen';
  static const String bridesBreakfastSnakPackages = '/BridesBreakfastSnakPackages';
  static const String relaxGlowPackage = '/RelaxGlowPackage';
  static const String forgotPasswordScreen = '/ForgotPasswordScreen';
  static const String verifyCodeScreen = '/VerifyCodeScreen';
  static const String resetPasswordScreen = '/ResetPasswordScreen';
  static const String passwordResetSuccessfillyScreen = '/PasswordResetSuccessfillyScreen';
  
  //admin
  static const String homePagesAdmin = '/HomePagesAdmin';
  static const String addNewSectionScreen = '/AddNewSectionScreen';

  //manager
  static const String homePagesManager = '/HomePagesManager';
  static List<GetPage> routes = [
    GetPage(
      name: signIn,
      page: () => const SignInScreen(),
      transition: Transition.leftToRight,
      binding: BindingsBuilder(() {
    Get.lazyPut<LoginControllerImp>(() => LoginControllerImp());
  }),
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: verifyCodeScreen,
      page: () => const VerifyCodeScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
    ),
    GetPage(
      name: passwordResetSuccessfillyScreen,
      page: () => const PasswordResetSuccessfillyScreen(),
    ),
    GetPage(
      name: signUpClientScreen,
      page: () => const SignUpClientScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: signUpVendorScreen,
      page: () => const SignUpVendorScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: signUpChooseScreen,
      page: () => const SignUpChooseScreen(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: homeScreenStart,
      page: () => const HomeScreenStart(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: makeupArtistScreen,
      page: () => const MakeupArtistScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: photograperScreen,
      page: () => const PhotographerScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: weddingDressScreen,
      page: () => const WeddingDressScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: weddingHallScreen,
      page: () => const WeddingHallScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: suitStore,
      page: () => const SuitStore(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: bookBridesmaidScreen,
      page: () =>  BridesmaidScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: emergencyBag,
      page: () =>  EmergencyBag(),
      transition: Transition.fade,
    ),
    GetPage(
      name: barbarShopScreen,
      page: () => const BarbarShopScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: artistScreen,
      page: () =>  ArtistScreen(),
    ),
    GetPage(
      name: carsScreen,
      page: () =>  CarsScreen(),
    ),
    GetPage(
      name: bridesBreakfastSnakPackages,
      page: () =>  BridesBreakfastSnakPackages(),
    ),
    GetPage(
      name: relaxGlowPackage,
      page: () =>  RelaxGlowPackage(),
    ),

    //admin
    GetPage(
      name: homePagesAdmin,
      page: () =>  HomePagesAdmin(),
    ),
    GetPage(
      name: addNewSectionScreen,
      page: () =>  AddNewSectionScreen(),
    ),

    //manager
    GetPage(
      name: homePagesManager,
      page: () =>  HomePagesManager(),
    ),
  ];
}
