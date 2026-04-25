import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/images.dart';
import '../../../core/constants/colors.dart';

class RelaxGlowPackage extends StatelessWidget {
  const RelaxGlowPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20.r),

                    child: Image.asset(
                      Images.relaxGlowPackage,
                      height: 200.h,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20.r),
                    child: Image.asset(
                      Images.extraServices,
                      height: 200.h,
                      width: 182.w,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),

              _buildRatingCard(),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "Price"),
              Text(
                "1,500 L.E",
                style: GoogleFonts.inriaSerif(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "Details"),
              _buildDetailsList(),
              const Divider(color: Colors.grey, thickness: 1),

              const _SectionTitle(title: "About"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                child: Text(
"Enjoy a full day of relaxation with our exclusive Jacuzzi, spa, and massage package the perfect treat for you.",                  textAlign: TextAlign.left,
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
                "Based on 85 reviews",
                style: GoogleFonts.inriaSerif(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1),

              SizedBox(height: 30.h),

              ElevatedButton(
                onPressed: () {},
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

  Widget _buildDetailsList() {
    List<String> makeupServices = [
      "Massage Session",
      "Facial Cleansing",
      "Spa",
      "Moroccan Bath",
      "Oil Bath",

    ];
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

  Widget _buildRatingCard() {
    return Column(
      children: [
        Text(
          "Relax & Glow Packge",
          style: GoogleFonts.inriaSerif(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),
        ),
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
              "4,9",
              style: GoogleFonts.inter(
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
