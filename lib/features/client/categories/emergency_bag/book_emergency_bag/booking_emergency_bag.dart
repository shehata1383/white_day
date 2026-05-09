// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../widget/appbar_logo_screen.dart';

class BookingEmergencyBag extends StatefulWidget {
  BookingEmergencyBag({
    super.key,
    required this.listImage,
    required this.title,
  });
  List<String> listImage;
  String title;
  @override
  State<BookingEmergencyBag> createState() => _BookingEmergencyBagState();
}

class _BookingEmergencyBagState extends State<BookingEmergencyBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.listImage.map((image) {
                return ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(15.r),
                  child: Image.asset(
                    image,
                    height: 120.h,
                    width: MediaQuery.of(context).size.width / 3.1,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
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
