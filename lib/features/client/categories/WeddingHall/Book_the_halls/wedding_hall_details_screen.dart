// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';

import '../../../../../core/model/wedding_hall/model_wedding_hall.dart';
import 'booking_wedding_hall_screen.dart';

class WeddingHallDetailsScreen extends StatelessWidget {
  const WeddingHallDetailsScreen({super.key, required this.data});
  final ModelWeddingHall data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(height: 15.h),
              _buildMainHeader(
                image: data.mainImage,
                title: data.name,
                address: data.address,
                rate: data.rate,
              ),
              SizedBox(height: 15.h),
              _buildImagesGrid(hallImages: data.listImage),
              SizedBox(height: 5),

              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "Price"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Text(
                  "Starting from ${NumberFormat("#,###.##").format(data.price)} L.E",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "Details"),
              _buildDetailsList(details: data.details),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "About The Hall"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
                child: Text(
                  "A modern and elegant venue designed for unforgettable celebrations, offering premium services, a spacious setting, and a warm, welcoming atmosphere for your special day.",
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

              const _SectionTitle(title: "4.8 Rating"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Text(
                  "Based on 120 reviews",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              SizedBox(height: 30.h),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => BookingWeddingHallScreen(
                      onPressed: () {},
                      image1: data.listImage[0],
                      image2: data.listImage[1],
                      title: data.name,
                      listPackages: data.packages,
                    ),
                  );
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

  Widget _buildMainHeader({
    required String image,
    required String title,
    required String address,
    required double rate,
  }) {
    return Container(
      width: 400.w,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.inriaSerif(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) =>
                      Icon(Icons.star, color: Colors.yellow[700], size: 24.r),
                ),
              ),
              SizedBox(width: 5.w),
              Text(
                rate.toString(),
                style: GoogleFonts.inriaSerif(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                ),
              ),
            ],
          ),
          Text(
            address,
            style: GoogleFonts.inriaSerif(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesGrid({required List<String> hallImages}) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 1.1,
      ),
      itemCount: hallImages.length,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(hallImages[index], fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildDetailsList({required List<String> details}) {
    return Column(
      children: details
          .map(
            (text) => Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
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
                color: Colors.black87,
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
