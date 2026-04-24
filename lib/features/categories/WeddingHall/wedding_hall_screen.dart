import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class WeddingHallScreen extends StatefulWidget {
  const WeddingHallScreen({super.key});

  @override
  State<WeddingHallScreen> createState() => _WeddingHallScreenState();
}

class _WeddingHallScreenState extends State<WeddingHallScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "Rixoz Plaza Hall",
      "price": "starting from 20,000 L.E",
      "imageSubCategores": Images.Rixos_Plaza_Hall,
      "route": RouteHelper.rixosPlazaWeddingHall,
    },
    {
      "nameCategores": "Cinderella Hall",
      "price": "starting from 23,000 L.E",
      "imageSubCategores": Images.Cinderella_Hall,
      "route": RouteHelper.cinderellaWeddingHall,
    },
    {
      "nameCategores": "Arkan Hall",
      "price": "starting from 25,000 L.E",
      "imageSubCategores": Images.Arkan_Hall,
      "route": RouteHelper.arkanWeddingHalldart,
    },
    {
      "nameCategores": "Askar Hall",
      "price": "starting from 90,000 L.E",
      "imageSubCategores": Images.Askar_Hall,
      "route": RouteHelper.askarWeddingHall,
    },
    {
      "nameCategores": "Crystal hall",
      "price": "starting from 10,000 L.E",
      "imageSubCategores": Images.halls5,
      //  "route": RouteHelper.rixosPlazaWeddingHall,
    },
    {
      "nameCategores": "Lavender hall",
      "price": "starting from 13,000 L.E",
      "imageSubCategores": Images.halls6,
      // "route": RouteHelper.rixosPlazaWeddingHall,
    },
    {
      "nameCategores": "Royal hall",
      "price": "starting from 12,000 L.E",
      "imageSubCategores": Images.halls7,
      // "route": RouteHelper.rixosPlazaWeddingHall,
    },
    {
      "nameCategores": "Rose hall",
      "price": "starting from 16,000 L.E",
      "imageSubCategores": Images.Rose_hall,
      // "route": RouteHelper.rixosPlazaWeddingHall,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Text(
              "The Halls",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10.h),
            FillterScreen(),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSubCategoryes.length,
                itemBuilder: (context, index) {
                  var hall = listSubCategoryes[index];

                  return InkWell(
                    onTap: () {
                      if (hall['route'] != null) {
                        Get.toNamed(hall['route']);
                      } else {
                        print(
                          "Route is still null for ${hall['nameCategores']}",
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      decoration:  BoxDecoration(color: Color(0xFFE8CDC0),borderRadius: BorderRadiusDirectional.circular(15.r)),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(15.r),topRight: Radius.circular(15.r)),
                            child: Image.asset(
                              hall['imageSubCategores'],
                              width: double.infinity,
                              height: 160.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      hall['nameCategores'],
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      hall['price'],
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Book now",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
