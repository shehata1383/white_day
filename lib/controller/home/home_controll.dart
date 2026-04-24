import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:white_day/core/model/model_category.dart';

import '../../core/constants/images.dart';
import '../../core/helper/route_helper.dart';
import '../../core/model/model_review.dart';

abstract class HomeControll extends GetxController {}

class HomeControllImp extends HomeControll {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  HomeControllImp();
  List<ModelCategory> listSubCategoryes = [
    ModelCategory(
      image: Images.weddingHall,
      nameCategory: "Wedding Halls",
      page: RouteHelper.weddingHallScreen,
    ),
    ModelCategory(
      image: Images.weddingDress,
      nameCategory: "Wedding Dress",
      page: RouteHelper.weddingDressScreen,
    ),
    ModelCategory(
      image: Images.suitStore,
      nameCategory: "Suit Store",
      page: RouteHelper.suitStoreScreen,
    ),
    ModelCategory(
      image: Images.photographer,
      nameCategory: "Photographers",
      page: RouteHelper.photograperScreen,
    ),
  ];

  List<ModelCategory> listSubCategoriesHome = [
    ModelCategory(
      image: Images.makeupArtist,
      nameCategory: "Makeup Artist",
      page: RouteHelper.makeupArtistScreen,
    ),
    ModelCategory(
      image: Images.photographer,
      nameCategory: "Photographer",
      page: RouteHelper.photograperScreen,
    ),
    ModelCategory(
      image: Images.weddingDress,
      nameCategory: "Wedding Dress",
      page: RouteHelper.weddingDressScreen,
    ),
    ModelCategory(
      image: Images.weddingHall,
      nameCategory: "Wedding Hall",
      page: RouteHelper.weddingHallScreen,
    ),

    ModelCategory(
      image: Images.suitStore,
      nameCategory: "Suit Store",
      page: RouteHelper.suitStoreScreen,
    ),
    ModelCategory(
      image: Images.MensHairSalon,
      nameCategory: "Barbar Shop",
      page: RouteHelper.barbarShopScreen,
    ),

    ModelCategory(image: Images.catering, nameCategory: "Catering", page: ""),
    ModelCategory(
      image: Images.extraServices,
      nameCategory: "Extra Services",
      page: "",
    ),

    ModelCategory(image: Images.artists, nameCategory: "Artists", page: ""),
    ModelCategory(
      image: Images.emergencyBag,
      nameCategory: "Emergency Bag",
      page: RouteHelper.bookEmergencyBag,
    ),
    ModelCategory(
      image: Images.bridesmaid,
      nameCategory: "Bridesmaid",
      page: RouteHelper.bookBridesmaidScreen,
    ),
    ModelCategory(image: Images.cars, nameCategory: "Cars", page: ""),
  ];
  List<ModelReview> reviews = [
    ModelReview(
      image: Images.review1,
      comment: "Amazing service and very professional.",
      rate: "4.8",
    ),
    ModelReview(
      image: Images.review2,
      comment: "The experience was smooth and easy.",
      rate: "4.10",
    ),
    ModelReview(
      image: Images.review3,
      comment: "Great quality and fast response.",
      rate: "4.10",
    ),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
