// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import '../../../core/model/model_makeup_category.dart';
import 'booking_makeup_artist_screen.dart';

class MakeUpScreen extends StatelessWidget {
  const MakeUpScreen({super.key, required this.data});
  final ModelMakeupCategory data;

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

                _buildMainImage(mainImage: data.mainImage),

                SizedBox(height: 10.h),

                _buildRatingCard(
                  name: data.name,
                  address: data.address,
                  rate: data.rate,
                ),

                SizedBox(height: 15.h),

                _buildImagesGrid(workImages: data.listImage),

                SizedBox(height: 5),

                const Divider(color: Colors.grey, thickness: 1),

                const _SectionTitle(title: "Price"),
                Text(
                  "Starting from ${NumberFormat('#,###').format(data.price)} L.E",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Divider(color: Colors.grey, thickness: 1),

                const _SectionTitle(title: "Details"),
                _buildDetailsList(makeupServices: data.details),
                const Divider(color: Colors.grey, thickness: 1),

                _SectionTitle(title: "About ${data.name.split(' ').first}"),
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
                  "Based on ${data.reviews} reviews",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(color: Colors.grey, thickness: 1),

                SizedBox(height: 30.h),

                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => BookingMakeupArtistScreen(
                        onPressed: () {},
                        image1: data.listImage[0],

                        image2: data.listImage[1],

                        listService: data.listService,
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
      ),
    );
  }

  Widget _buildMainImage({required String mainImage}) {
    return Container(
      width: 396,
      height: 264,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(mainImage), fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildRatingCard({
    required String name,
    required String address,
    required double rate,
  }) {
    return Column(
      children: [
        Text(
          name,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 32,
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

  Widget _buildImagesGrid({required List<String> workImages}) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 1.1,
      ),
      itemCount: workImages.length,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(workImages[index], fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildDetailsList({required List<String> makeupServices}) {
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
