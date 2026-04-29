// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widget/custom_button.dart';
import '../../widget/appbar_logo_screen.dart';

class BookingDressScreen extends StatefulWidget {
  BookingDressScreen({
    super.key,
    required this.onPressed,
    required this.image1,
    required this.image2,
    required this.title,
    required this.listSize,
     this.listColors,
  });
  Function onPressed;
  String image1;
  String image2;
  String title;

  List<String> listSize;
  List<String>? listColors;
  @override
  State<BookingDressScreen> createState() => _BookingDressScreenState();
}

class _BookingDressScreenState extends State<BookingDressScreen> {
  @override
  Widget build(BuildContext context) {
    String size = '';
    String colors = '';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(widget.image1, height: 200.h, fit: BoxFit.fitWidth),
                Image.asset(widget.image2, height: 200.h, fit: BoxFit.fitWidth),
              ],
            ),
            Text(
              widget.title,
              style: GoogleFonts.inriaSerif(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Size: ",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widget.listSize.map((s) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.w),
                      child: CustomButton(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 68,
                        onPressed: () {
                          setState(() {
                            size = s;
                          });
                        },
                        buttonText: s,
                        color: s == size
                            ? AppColors.colorButton2
                            : AppColors.colorButton,
                        fontSize: 30.sp,
                        textColor: s == size ? Colors.white : Colors.black,
                        isBold: true,
                        radius: 20,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 10.h),
         widget.listColors.isNull? SizedBox.shrink():  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  "Color: ",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:widget.listColors!.map((color) {
                    setState(() {
                      
                    });
                    return Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 10.w),
                      child: CustomButton(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 68,
                        onPressed: () {
                          setState(() {
                            colors = color;
                          });
                        },
                        buttonText: color,
                        color: color == colors
                            ? AppColors.colorButton2
                            : AppColors.colorButton,
                        fontSize: 30.sp,
                        textColor: color == colors
                            ? Colors.white
                            : Colors.black,
                        isBold: true,
                        radius: 20,
                      ),
                    );
                    
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 10.h),

            CustomButton(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 68,
              onPressed: widget.onPressed,
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
