import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/images.dart';

import '../../../core/constants/colors.dart';
import '../../../core/model/emergency_bag/model_emergency_bag.dart';
import '../../widget/appbar_logo_screen.dart';
import 'book_emergency_bag/booking_emergency_bag.dart';

class EmergencyBag extends StatelessWidget {
  EmergencyBag({super.key});
  ModelEmergencyBag data = ModelEmergencyBag(
    name: "Emergency Bag",
    listImage: [
      Images.emergencyBag1,
      Images.emergencyBag2,
      Images.emergencyBag3,
    ],
    rate: 4.6,
    address: "Cairo, Egypt",
    price: 5000,
    details: [
      "Mini sewing kit",
      "Stain remover pen",
      "Makeup touch-up kit",
      "Hair ties & Hair clips",
      "Pain Relievers & allergy pills",
    ],
    about:
        "A fully stocked bag filled with everything a bride might need for any unexpected situation your brides.",
    review: 80,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBarLogoScreen(),
              SizedBox(height: 5.h),
              Text(
                data.name,
                style: GoogleFonts.inriaSerif(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: data.listImage.map((image) {
                  return Image.asset(image);
                }).toList(),
              ),
              _buildRatingCard(rate: data.rate, address: data.address),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "Price"),
              Text(
                "${NumberFormat('#,###').format(data.price)} L.E",
                style: GoogleFonts.inriaSerif(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "Details"),
              _buildDetailsList(makeupServices: data.details),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "About Emergency Bag"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                child: Text(
                  data.about,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inriaSerif(
                    fontSize: 16.sp,
                    height: 1.4,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              _SectionTitle(title: "${data.rate} Rating"),
              Text(
                "Based on ${data.review} reviews",
                style: GoogleFonts.inriaSerif(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              SizedBox(height: 30.h),

              ElevatedButton(
                onPressed: () {
                  Get.to(()=>BookingEmergencyBag(listImage: data.listImage, title: data.name,));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.colorButton,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(
                    horizontal: 60.w,
                    vertical: 12.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  "Book Now",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailsList({required List<String> makeupServices}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: makeupServices
          .map(
            (text) => Padding(
              padding: EdgeInsets.only(left: 5, top: 4),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8.r,
                    backgroundColor: AppColors.colorButton.withOpacity(0.6),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      text,
                      style: GoogleFonts.inriaSerif(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildRatingCard({required double rate, required String address}) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: List.generate(
                5,
                (index) =>
                    Icon(Icons.star, color: Colors.yellow[700], size: 30.r),
              ),
            ),
            SizedBox(width: 5),
            Text(
              rate.toString(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 24.sp,
              ),
            ),
          ],
        ),
        Text(
          address,
          style: GoogleFonts.inriaSerif(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Row(
        children: [
          const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: GoogleFonts.inriaSerif(
                fontSize: 22.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
        ],
      ),
    );
  }
}
