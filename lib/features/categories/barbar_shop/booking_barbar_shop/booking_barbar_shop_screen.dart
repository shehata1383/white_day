// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../widget/appbar_logo_screen.dart';

class BookingBarbarShopScreen extends StatefulWidget {
  BookingBarbarShopScreen({
    super.key,
    required this.listImage,
    required this.title,
  });
  List<String> listImage;
  String title;
  @override
  State<BookingBarbarShopScreen> createState() =>
      _BookingBarbarShopScreenState();
}

class _BookingBarbarShopScreenState extends State<BookingBarbarShopScreen> {
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
              children: widget.listImage.map((image) {
                return Image.asset(
                  image,
                  height: 200.h,
                  width:
                      (MediaQuery.of(context).size.width * 0.98) /
                      widget.listImage.length,
                  fit: BoxFit.cover,
                );
              }).toList(),
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
