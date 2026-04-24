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
import 'widget/reviews_widget.dart';

class HomeScreenStart extends StatefulWidget {
  const HomeScreenStart({super.key});

  @override
  State<HomeScreenStart> createState() => _HomeScreenStartState();
}

class _HomeScreenStartState extends State<HomeScreenStart> {
  List listSubCategoryes = [
    {
      "nameCategores": "Wedding Halls",
      "imageSubCategores": Images.weddingHall,
      "page": RouteHelper.weddingHallScreen,
    },

    {
      "nameCategores": "Wedding Dress",
      "imageSubCategores": Images.weddingDress,
      "page": RouteHelper.weddingDressScreen,
    },

    {
      "nameCategores": "Suit Store",
      "imageSubCategores": Images.suitStore,
      "page": RouteHelper.suitStoreScreen,
    },
    {
      "nameCategores": "Photographers",
      "imageSubCategores": Images.photographer,
      "page": RouteHelper.photograperScreen,
    },
  ];

  List reviews = [
    {
      "text": "Amazing service and very professional.",
      "image": Images.review1,
      "review": "4.8",
    },
    {
      "text": "The experience was smooth and easy.",
      "image": Images.review2,
      "review": "4.10",
    },
    {
      "text": "Great quality and fast response.",
      "image": Images.review3,
      "review": "4.10",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                Images.logo,
                width: 180.w,
                height: 90.h,
                fit: BoxFit.cover,
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 135.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Images.ourServices),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5.h,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.colorButton.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(
                          Dimensions.radiusLarge,
                        ),
                      ),
                      child: Text(
                        "Reserve Now",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CustomButton(
                onPressed: () {
                  Get.toNamed(RouteHelper.homeScreen);
                },
                buttonText: "Our Services",
                color: AppColors.colorButton,
                fontSize: 22.sp,
                textColor: Colors.black,
                isBold: true,
                width: 170.w,
                height: 35.h,
                radius: Dimensions.radiusDefault,
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listSubCategoryes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    mainAxisExtent: 125.h,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () =>
                          Get.toNamed(listSubCategoryes[index]['page']),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listSubCategoryes[index]['nameCategores'],
                            style: GoogleFonts.inriaSerif(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                listSubCategoryes[index]['imageSubCategores'],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: AppColors.colorButton,
                  borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
                ),
                child: Text(
                  "Reviews",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  return ReviewsWidget(review: reviews[index]);
                },
              ),

              SizedBox(height: 20.h),

              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        onPressed: () => Get.toNamed(RouteHelper.signIn),
                        buttonText: "Login",
                        color: AppColors.colorButton,
                        fontSize: 20,
                        width: 140.w,
                        height: 35.h,
                        textColor: Colors.black,
                      ),
                      CustomButton(
                        onPressed: () => Get.toNamed(RouteHelper.signUp),
                        buttonText: "Create account",
                        color: AppColors.colorButton,
                        fontSize: 20,
                        width: 142.w,
                        height: 35.h,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
