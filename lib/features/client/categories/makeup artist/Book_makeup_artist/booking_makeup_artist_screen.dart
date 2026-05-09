// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/model/make_up/model_make_up_artist_service.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../widget/appbar_logo_screen.dart';

class BookingMakeupArtistScreen extends StatefulWidget {
  BookingMakeupArtistScreen({
    super.key,
    required this.onPressed,
    required this.image1,
    required this.image2,
    required this.listService,
  });
  Function onPressed;
  String image1;
  String image2;
  List<ModelMakeUpArtistService> listService;
  @override
  State<BookingMakeupArtistScreen> createState() =>
      _BookingMakeupArtistScreenState();
}

class _BookingMakeupArtistScreenState extends State<BookingMakeupArtistScreen> {
  ModelMakeUpArtistService? selectedService;
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
                  Image.asset(
                    widget.image1,
                    height: 160.h,
                    width: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    widget.image2,
                    height: 160.h,
                    width: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ],
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
                  "Select Service",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.h),

              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widget.listService.map((s) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedService = s;
                        });
                      },
                      child: Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(bottom: 10.h),
                            padding: EdgeInsetsDirectional.symmetric(
                              vertical: 5.h,
                            ),

                            decoration: BoxDecoration(
                              color: AppColors.colorDetails,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  s.serviceName,
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Divider(color: AppColors.colorButton2),
                                Text(
                                  "${NumberFormat('#,###').format(s.servicePrice)} L.E",
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        selectedService==s?  Container(
                            width: 45,
                            height: 35,
                            decoration: BoxDecoration(
                              color: AppColors.colorButton2,
                              borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(15.r),
                                topEnd: Radius.circular(15.r),
                              ),
                            ),
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 7,vertical: 7),
                            child: Icon(Icons.done, color: Colors.white,size: 18.w,),
                          ):SizedBox.shrink(),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10.h),

              CustomButton(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 68,
                onPressed: widget.onPressed,
                buttonText: "Add To Cart",
                color: AppColors.colorButton2,
                fontSize: 30.sp,
                textColor: AppColors.colorDetails,
                isBold: true,
                radius: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
