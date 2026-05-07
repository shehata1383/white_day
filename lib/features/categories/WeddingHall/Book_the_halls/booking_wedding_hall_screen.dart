// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/core/helper/route_helper.dart';
import 'package:white_day/core/model/wedding_hall/model_wedding_hall.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_snackbar.dart';
import '../../../widget/appbar_logo_screen.dart';

class BookingWeddingHallScreen extends StatefulWidget {
  BookingWeddingHallScreen({
    super.key,
    required this.onPressed,
    required this.image1,
    required this.image2,
    required this.title,
    required this.listPackages,
  });
  Function onPressed;
  String image1;
  String image2;
  String title;
  List<Package> listPackages;
  @override
  State<BookingWeddingHallScreen> createState() =>
      _BookingWeddingHallScreenState();
}

class _BookingWeddingHallScreenState extends State<BookingWeddingHallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBarLogoScreen(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      widget.image1,
                      height: 160.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      widget.image2,
                      height: 160.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),
              Text(
                widget.title,
                style: GoogleFonts.inriaSerif(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.colorDetails,
                ),
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 5.w,
                  vertical: 10.h,
                ),

                child: Text(
                  "Select Package",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30.h),

              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widget.listPackages.map((s) {
                    return Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.only(bottom: 30.h),
                          padding: EdgeInsetsDirectional.symmetric(
                            vertical: 5.h,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(end: 10.w),
                                child: Align(
                                  alignment: AlignmentDirectional.topEnd,
                                  child: Text(
                                    "${NumberFormat('#,###').format(s.price)} L.E",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                s.packageName,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              Column(
                                children: s.packageDetailes.map((package) {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.symmetric(
                                      horizontal: 5.w,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsetsDirectional.only(
                                            top: 7,
                                          ),
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              25.r,
                                            ),
                                            color: AppColors.colorDetails,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.75,
                                          child: Text(
                                            package,
                                            style: GoogleFonts.inriaSerif(
                                              fontSize: 24.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),

                              SizedBox(height: 15.h),
                              CustomButton(
                                width: MediaQuery.of(context).size.width * 0.65,
                                height: 68,
                                onPressed: () {
                                  showCustomSnackBar('Added to reservations', isError: false);
                                Get.offAllNamed(RouteHelper.homeScreen);
                                },
                                buttonText: "Add To Cart",
                                color: AppColors.colorButton2,
                                fontSize: 30.sp,
                                textColor: AppColors.colorDetails,
                                isBold: true,
                                radius: 50.r,
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -25),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.colorDetails,
                              borderRadius: BorderRadiusDirectional.circular(
                                15.r,
                              ),
                            ),
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 7,
                              vertical: 7,
                            ),
                            child: Image.asset(
                              Images.king,
                              width: 30,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
