import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/model/car/model_car.dart';
import '../../../widget/appbar_logo_screen.dart';
import '../../../widget/filtter_screen/fillter_screen.dart';
import 'booking_car_screen/car_details_screen.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List listSubCategoryes = [
      {
        "nameCategores": "Dream Car",
        "price": "1,700 L.E",
        "imageSubCategores": Images.cars1,
        "route": CarDetailsScreen(
          data: ModelCar(
            name: "MG 5 2023",
            listImage: [Images.mg520231, Images.mg520232, Images.mg520233],
            rate: 4.9,
            address: "Cairo, Egypt",
            price: 1700,
            details: [
              "Duration: Full DAY",
              "Decoration: Car decorated with flowers & ribbons",
              "Lighting: LED lights & special night effects",
              "Driver: Professional driver included",
            ],
            about:
                "A practical and affordable sedan with modern design, comfortable interior.",

            review: 90,
          ),
        ),
      },
      {
        "nameCategores": "Royal Crown",
        "price": "2,200 L.E",
        "imageSubCategores": Images.cars2,
        "route": CarDetailsScreen(
          data: ModelCar(
            name: "Hyundai Elantra 2026",
            listImage: [
              Images.hyundaiElantra20261,
              Images.hyundaiElantra20262,
              Images.hyundaiElantra20263,
            ],
            rate: 5.0,
            address: "Cairo, Egypt",
            price: 2200,
            details: [
              "Duration: Full DAY",
              "Decoration: Car decorated with flowers & ribbons",
              "Lighting: LED lights & special night effects",
              "Driver: Professional driver included",
            ],
            about:
                "It combines elegant design and practical performance at an affordable price.",
            review: 95,
          ),
        ),
      },
      {
        "nameCategores": "White Pearl",
        "price": "3,500 L.E",
        "imageSubCategores": Images.cars3,
        "route":  CarDetailsScreen(
          data: ModelCar(
            name: "Kia Sportage Gt Line",
            listImage: [
              Images.kiaSportageGtLine1,
              Images.kiaSportageGtLine2,
              Images.kiaSportageGtLine3,
            ],
            rate: 5.2,
            address: "Cairo, Egypt",
            price: 3500,
            details: [
      "Duration: Full DAY",
      "Decoration: Car decorated with flowers & ribbons",
      "Lighting: LED lights & special night effects",
      "Driver: Professional driver included",
    ],
            about:
                  "Kia Sportage is a stylish offering comfort, modern features, and reliable performance.",
            review: 95,
          ),
        ),
      },
    ];
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),

            Text(
              "Cars",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10.h),

            FillterScreen(),

            SizedBox(height: 15.h),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSubCategoryes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  mainAxisExtent: 200.h,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(listSubCategoryes[index]['route']),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.colorDetails,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(15.r),
                                topEnd: Radius.circular(15.r),
                              ),
                              child: Image.asset(
                                listSubCategoryes[index]['imageSubCategores'],
                                width: double.infinity,
                                height: 140.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 2.w,
                            ),
                            child: Text(
                              listSubCategoryes[index]['nameCategores'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 18.sp,

                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Padding(
                              padding: EdgeInsetsDirectional.only(end: 2.w),
                              child: Text(
                                listSubCategoryes[index]['price'],
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
