import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';
import '../../widget/appbar_logo_screen.dart';

class BookingDressScreen extends StatefulWidget {
  const BookingDressScreen({super.key});

  @override
  State<BookingDressScreen> createState() => _BookingDressScreenState();
}

class _BookingDressScreenState extends State<BookingDressScreen> {
  @override
  Widget build(BuildContext context) {
    String size = '';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/Royal_Dream/RoyalDream1.png',
                  height: 200.h,
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'assets/Royal_Dream/RoyalDream2.png',
                  height: 200.h,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            Text(
              "Royal Dreem Wedding Dress",
              style: GoogleFonts.inriaSerif(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Size: ",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                CustomButton(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: 68,
                  onPressed: () {
                    setState(() {
                      size = "S";
                    });
                  },
                  buttonText: "S",
                  color: size == "S"
                      ? AppColors.colorButton2
                      : AppColors.colorButton,
                  fontSize: 30.sp,
                  textColor: Colors.black,
                  isBold: true,
                  radius: 20,
                ),
                CustomButton(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: 68,
                  onPressed: () {
                    setState(() {
                      size = "M";
                    });
                  },
                  buttonText: "M",
                  color: size == "M"
                      ? AppColors.colorButton2
                      : AppColors.colorButton,
                  fontSize: 30.sp,
                  textColor: Colors.black,
                  isBold: true,
                  radius: 20,
                ),
                CustomButton(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: 68,

                  onPressed: () {
                    setState(() {
                      size = "L";
                    });
                  },
                  buttonText: "L",
                  color: size == "L"
                      ? AppColors.colorButton2
                      : AppColors.colorButton,
                  fontSize: 30.sp,
                  textColor: Colors.black,
                  isBold: true,
                  radius: 20,
                ),
              ],
            ),
            SizedBox(height: 10.h),

            CustomButton(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 68,
              onPressed: () {
              },
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
