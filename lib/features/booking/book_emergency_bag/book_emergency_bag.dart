import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/images.dart';

import '../../../core/constants/colors.dart';
import '../../widget/appbar_logo_screen.dart';

class BookEmergencyBag extends StatelessWidget {
  const BookEmergencyBag({super.key});

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
                "Emergency Bag",
                style: GoogleFonts.inriaSerif(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
               
              ), Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Image.asset(Images.emergencyBag1),
                Image.asset(Images.emergencyBag2),
                Image.asset(Images.emergencyBag3),
              ],),
              _buildRatingCard(),
                              const Divider(color: Colors.grey, thickness: 1),
          
                  const _SectionTitle(title: "Price"),
                   Text(
                    "2,000 L.E",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(color: Colors.grey, thickness: 1),
          
                  const _SectionTitle(title: "Details"),
              _buildDetailsList(),
               const Divider(color: Colors.grey, thickness: 1),
          
                  const _SectionTitle(title: "About Emergency Bag"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: Text(
                      "A fully stocked bag filled with everything a bride might need for any unexpected situation your brides.",
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
          
                  const _SectionTitle(title: "4,6 Rating"),
                  Text(
                    "Based on 60 reviews",
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
      "Mini sewing kit",
      "Stain remover pen",
      "Makeup touch-up kit",
      "Hair ties & Hair clips",
      "Pain Relievers & allergy pills"

    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: makeupServices
          .map(
            (text) => Padding(
          padding: EdgeInsets.only(left: 5,top: 4),
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
       SizedBox(height: 5.h,),
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
              "4,6",
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