import 'package:get/get.dart';

import '../../features/booking/Book_Dress/Diamond_Glow.dart';
import '../../features/booking/Book_Dress/Golden_Queen.dart';
import '../../features/booking/Book_Dress/Royal_Dream.dart';
import '../../features/booking/Book_Dress/moon_light_screen.dart';
import '../../features/booking/Book_Photographer/Aboutaleb_Wedding.dart';
import '../../features/booking/Book_Photographer/Dart_Wedding.dart';
import '../../features/booking/Book_Photographer/agha_wedding.dart';
import '../../features/booking/Book_makeup_artist/Hend_Mohamed.dart';
import '../../features/booking/Book_makeup_artist/Sara_Salama.dart';
import '../../features/booking/Book_makeup_artist/Yasmin_Ahmed.dart';
import '../../features/booking/Book_suit_store/Noble_White.dart';
import '../../features/booking/Book_suit_store/Royal_Black .dart';
import '../../features/booking/Book_suit_store/Shadow_Royal.dart';
import '../../features/booking/Book_suit_store/Velet_Burgundy.dart';
import '../../features/booking/Book_the_halls/Arkan_Wedding_Hall.dart';
import '../../features/booking/Book_the_halls/Askar_Wedding_Hall.dart';
import '../../features/booking/Book_the_halls/Cinderella_Wedding_Hall.dart';
import '../../features/booking/Book_the_halls/Rixos_Plaza_Wedding_Hall.dart';
import '../../features/booking/book_barbar_shop/groom_glow_package.dart';
import '../../features/booking/book_barbar_shop/royal_groom_package_screen.dart';
import '../../features/booking/book_barbar_shop/the_gentelman_package.dart';
import '../../features/categories/WeddingHall/wedding_hall_screen.dart';
import '../../features/auth/sign in/sign_in_screen.dart';
import '../../features/auth/sign out/sign_out_screen.dart';
import '../../features/booking/book_bridesmaid/book_bridesmaid_screen.dart';
import '../../features/booking/book_emergency_bag/book_emergency_bag.dart';
import '../../features/categories/barbar_shop/barbar_shop_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/home/home_screen_start.dart';
import '../../features/categories/makeup artist/makeup_artist_screen.dart';
import '../../features/categories/photographer/photographer_screen.dart';
import '../../features/categories/suitStore/suit_store_screen.dart';
import '../../features/categories/weddingDress/wedding_dress_screen.dart';

class RouteHelper {
  // static const String initial = '/';
  static const String signIn = '/SignInScreen';
  static const String signUp = '/SignUpScreen';

  static const String homeScreen = '/HomeScreen';
  static const String homeScreenStart = '/HomeScreenStart';
  static const String makeupArtistScreen = '/MakeupArtistScreen';
  static const String photograperScreen = '/PhotograperScreen';
  static const String weddingDressScreen = '/weddingDressScreen';
  static const String weddingHallScreen = '/weddingHallScreen';
  static const String suitStoreScreen = '/suitStoreScreen';

  static const String rixosPlazaWeddingHall = '/RixosPlazaWeddingHall';
  static const String cinderellaWeddingHall = '/CinderellaWeddingHall';
  static const String askarWeddingHall = '/AskarWeddingHall';
  static const String arkanWeddingHalldart = '/ArkanWeddingHalldart';

  static const String saraSAlama = '/SaraSalama';
  static const String yasminAhmed = '/YasminAhmed';
  static const String hendMohamed = '/HendMohamed';

  static const String royalDream = '/RoyalDream';
  static const String goldenQueen = '/GoldenQueen';
  static const String moonLightScreen = '/MoonLightScreen';
  static const String diamondGlow = '/DiamondGlow';
  static const String dartWedding = '/DartWedding';
  static const String aghaWedding = '/AghaWedding';
  static const String aboutalebWedding = '/AboutalebWedding';
  static const String royalBlack = '/RoyalBlack';
  static const String nobleWhite = '/NobleWhite';
  static const String shadowRoyal = '/ShadowRoyal';
  static const String veletBurgundy = '/VeletBurgundy';
  static const String bookBridesmaidScreen = '/BookBridesmaidScreen';
  static const String bookEmergencyBag = '/BookEmergencyBag';
  static const String barbarShopScreen = '/BarbarShopScreen';
  static const String royalGroomPackageScreen = '/RoyalGroomPackageScreen';
  static const String groomGlowPackage = '/GroomGlowPackage';
  static const String theGentelmanPackage = '/TheGentelmanPackage';

  static List<GetPage> routes = [
    GetPage(
      name: signIn,
      page: () => const SignInScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: signUp,
      page: () => const SignOutScreen(),
      transition: Transition.rightToLeft,
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
      name: suitStoreScreen,
      page: () => const SuitStoreScreen(),
      transition: Transition.zoom,
    ),

    GetPage(
      name: rixosPlazaWeddingHall,
      page: () => const RixosPlazaWeddingHall(),
      transition: Transition.fade,
    ),
    GetPage(
      name: cinderellaWeddingHall,
      page: () => const CinderellaWeddingHall(),
      transition: Transition.fade,
    ),
    GetPage(
      name: askarWeddingHall,
      page: () => const AskarWeddingHall(),
      transition: Transition.fade,
    ),
    GetPage(
      name: arkanWeddingHalldart,
      page: () => const ArkanWeddingHalldart(),
      transition: Transition.fade,
    ),

    GetPage(
      name: saraSAlama,
      page: () => const SaraSalama(),
      transition: Transition.fade,
    ),
    GetPage(
      name: yasminAhmed,
      page: () => const YasminAhmed(),
      transition: Transition.fade,
    ),
    GetPage(
      name: hendMohamed,
      page: () => const HendMohamed(),
      transition: Transition.fade,
    ),
    GetPage(
      name: royalDream,
      page: () => const RoyalDream(),
      transition: Transition.fade,
    ),
    GetPage(
      name: goldenQueen,
      page: () => const GoldenQueen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: moonLightScreen,
      page: () => const MoonLightScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: diamondGlow,
      page: () => const DiamondGlow(),
      transition: Transition.fade,
    ),
    GetPage(
      name: aboutalebWedding,
      page: () => const AboutalebWedding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: aghaWedding,
      page: () => const AghaWedding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: dartWedding,
      page: () => const DartWedding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: royalBlack,
      page: () => const RoyalBlack(),
      transition: Transition.fade,
    ),
    GetPage(
      name: nobleWhite,
      page: () => const NobleWhite(),
      transition: Transition.fade,
    ),
    GetPage(
      name: shadowRoyal,
      page: () => const ShadowRoyal(),
      transition: Transition.fade,
    ),
    GetPage(
      name: veletBurgundy,
      page: () => const VeletBurgundy(),
      transition: Transition.fade,
    ),
    GetPage(
      name: bookBridesmaidScreen,
      page: () => const BookBridesmaidScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: bookEmergencyBag,
      page: () => const BookEmergencyBag(),
      transition: Transition.fade,
    ),
    GetPage(
      name: barbarShopScreen,
      page: () => const BarbarShopScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: royalGroomPackageScreen,
      page: () => const RoyalGroomPackageScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: groomGlowPackage,
      page: () => const GroomGlowPackage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: theGentelmanPackage,
      page: () => const TheGentelmanPackage(),
      transition: Transition.fade,
    ),
  ];
}
