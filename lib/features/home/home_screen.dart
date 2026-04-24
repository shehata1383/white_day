// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/helper/route_helper.dart';
import '../../core/constants/dimensions.dart';
import '../../core/constants/images.dart';
import '../../core/widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "Makeup Artist",
      "imageSubCategores": Images.makeupArtist,
      "page": RouteHelper.makeupArtistScreen,
    },
    {
      "nameCategores": "Photographer",
      "imageSubCategores": Images.photographer,
      "page": RouteHelper.photograperScreen,
    },
    {
      "nameCategores": "Wedding Dress",
      "imageSubCategores": Images.weddingDress,
      "page": RouteHelper.weddingDressScreen,
    },
    {
      "nameCategores": "Wedding Hall",
      "imageSubCategores": Images.weddingHall,
      "page": RouteHelper.weddingHallScreen,
    },
    {
      "nameCategores": "Suit Store",
      "imageSubCategores": Images.suitStore,
      "page": RouteHelper.suitStoreScreen,
    },
    {
      "nameCategores": "Barbar Shop",
      "imageSubCategores": Images.MensHairSalon,
       "page": RouteHelper.barbarShopScreen,
    },
    {
      "nameCategores": "Catering",
      "imageSubCategores": Images.catering,
      "page": "",
    },
    {
      "nameCategores": "Extra Services",
      "imageSubCategores": Images.extraServices,
      "page": "",
    },
    {
      "nameCategores": "Artists",
      "imageSubCategores": Images.artists,
      "page": "",
    },
    {
      "nameCategores": "Emergency Bag",
      "imageSubCategores": Images.emergencyBag,
    "page": RouteHelper.bookEmergencyBag,
    },
    {
      "nameCategores": "Bridesmaid",
      "imageSubCategores": Images.bridesmaid,
    "page": RouteHelper.bookBridesmaidScreen,
    },
    {"nameCategores": "Cars", "imageSubCategores": Images.cars, "page": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: 0,
                  top: 0.h,
                  child: Image.asset(
                    Images.appbarStyle,
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Image.asset(
                  Images.logo,
                  width: 322.w,
                  height: 125.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: -43,
                  top: 0.h,
                  child: Image.asset(
                    Images.appbarStyle,
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              "Welcome",
              style: GoogleFonts.inriaSerif(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                shrinkWrap: true,
                itemCount: listSubCategoryes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (listSubCategoryes[index]['page'] != "") {
                        Get.toNamed(listSubCategoryes[index]['page']);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorButton,
                        borderRadius: BorderRadius.circular(
                          Dimensions.radiusLarge,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              Dimensions.radiusLarge,
                            ),
                            child: Image.asset(
                              listSubCategoryes[index]['imageSubCategores'],
                              width: double.infinity,
                              height: 140.h,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              listSubCategoryes[index]['nameCategores'],

                              style: GoogleFonts.inriaSerif(
                                fontSize: Dimensions.fontSizeExtraLarge2.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 26.h,
                  childAspectRatio: 1,
                  mainAxisExtent: 180.h,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
              onPressed: () {
                Get.toNamed(RouteHelper.homeScreen);
              },
              buttonText: "My Reservations",
              color: AppColors.colorButton,
              fontSize: 22.sp,
              textColor: Colors.black,
              isBold: true,
             margin: EdgeInsetsDirectional.symmetric(horizontal:25.w),
              height: 35.h,
              radius: Dimensions.radiusDefault,
            ),
          ],
        ),
      ),
    );
  }
}
