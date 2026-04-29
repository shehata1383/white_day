// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';

import 'booking_dresses_screen.dart';

class MoonLightScreen extends StatelessWidget {
  const MoonLightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 15.h),
                _buildMainImage(),
                SizedBox(height: 10.h),
                _buildRatingCard(),
                SizedBox(height: 15.h),
                _buildImagesGrid(),
                SizedBox(height: 5),
                const Divider(color: Colors.grey, thickness: 1),
                const _SectionTitle(title: "Price"),
                Text(
                  "17,000 L.E",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Divider(color: Colors.grey, thickness: 1),
                const _SectionTitle(title: "Details"),
                _buildDetailsList(),
                const Divider(color: Colors.grey, thickness: 1),
                const _SectionTitle(title: "Description"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                  child: Text(
"This is a bridal dress, perfect for a Katb Kitab. It's elegant, soft, and beautifully designed for a simple yet classy look.",                    textAlign: TextAlign.left,
                    style: GoogleFonts.inriaSerif(
                      fontSize: 16.sp,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Divider(color: Colors.grey, thickness: 1),
                const _SectionTitle(title: "4,9 Rating"),
                Text(
                  "Based on 75 reviews",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 30.h),
                ElevatedButton(
                  onPressed: () { Get.to(
                      () => BookingDressScreen(
                        onPressed: (){},
                        image1: 'assets/images/moonLight1.jpg',
                        image2: 'assets/images/moonLight2.jpg',
                        title:   "Moonlight Wedding Dress",
                        listSize: ['s','m','l'],
                      
                      ),
                    );},
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
      ),
    );
  }

  Widget _buildMainImage() {
    return SizedBox(
      height: 290,
      width: 430,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/moonLight1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/moonLight2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingCard() {
    return Column(
      children: [
        Text(
          "Moonlight Wedding Dress",
          style: GoogleFonts.inriaSerif(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: List.generate(
                4,
                (index) =>
                    Icon(Icons.star, color: Colors.yellow[700], size: 25.r),
              ),
            ),
            SizedBox(width: 5),
            Text(
              "4,9",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 24.sp,
              ),
            ),
          ],
        ),
        Text(
          "Cairo, Egypt",
          style: GoogleFonts.inriaSerif(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildImagesGrid() {
    List<String> workImages = [
      'assets/images/moonLight3.jpg',
      'assets/images/moonLight4.jpg',
      'assets/images/moonLight5.jpg',
      'assets/images/moonLight6.jpg',
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 0.73,
      ),
      itemCount: workImages.length,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.asset(workImages[index], fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildDetailsList() {
    List<String> makeupServices = [
      "Size: S/M/L",
      "Color:White",
      "Fabric:Lace & Tulle",
      "Style:Straight",
      "Extension /Long Wedding Veil",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: makeupServices
          .map(
            (text) => Padding(
              padding: EdgeInsets.only(left: 125, top: 4),
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



