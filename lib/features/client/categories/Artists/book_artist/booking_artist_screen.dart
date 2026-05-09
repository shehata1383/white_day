// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../widget/appbar_logo_screen.dart';

class BookingArtistScreen extends StatefulWidget {
  BookingArtistScreen({
    super.key,
    required this.listImage,
    required this.title,
  });
  List<String> listImage;
  String title;
  @override
  State<BookingArtistScreen> createState() =>
      _BookingArtistScreenState();
}

class _BookingArtistScreenState extends State<BookingArtistScreen> {
  int? size;
  String? colors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Row(
              children: [ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.asset(
                    widget.listImage[0],
                    height: 160.h,
                    width:
                        (MediaQuery.of(context).size.width * 0.99) /
                        2,
                    fit: BoxFit.cover,
                  ),
              ),ClipRRect(    borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.asset(
                    widget.listImage[1],
                    height: 160.h,
                    width:
                        (MediaQuery.of(context).size.width * 0.99) /
                        2,
                    fit: BoxFit.cover,
                  ),
              )]
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
            SizedBox(height: 100.h),

            CustomButton(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 68,
              onPressed: () {},
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
    );
  }
}
