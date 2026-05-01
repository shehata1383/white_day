// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../widget/appbar_logo_screen.dart';

class BookingDressScreen extends StatefulWidget {
  BookingDressScreen({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    required this.listSize,
   required  this.listColors,
  });
  String image1;
  String image2;
  String title;
  List<String> listSize;
  List<String>listColors;
  @override
  State<BookingDressScreen> createState() => _BookingDressScreenState();
}

class _BookingDressScreenState extends State<BookingDressScreen> {
     String? size ;
    String? colors ;
  @override

  Widget build(BuildContext context) {
   
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
         widget.listSize.isEmpty?SizedBox.shrink():   Row(
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

               widget.listSize.isEmpty?SizedBox.shrink():  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widget.listSize.map((s) {
                    return GestureDetector(onTap: () {
                      setState(() {
                        
                        size=s;
                      });
                    },
                      child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.w),
                        child: Stack(alignment: AlignmentDirectional.topEnd,
                          children: [
                            Container(
                              width:60.w,
                              alignment: AlignmentDirectional.center,
                              margin: EdgeInsetsDirectional.only(bottom: 10.h),
                              padding: EdgeInsetsDirectional.symmetric(
                                vertical:10.h,
                                horizontal: 15.w
                              ),
                        
                              decoration: BoxDecoration(
                                color: AppColors.colorDetails,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Text(
                                s,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                              size==s?  Container(
                              width: 45,
                              height: 35,
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(15.r),
                                  topEnd: Radius.circular(15.r),
                                ),
                              ),
                              padding: EdgeInsetsDirectional.symmetric(horizontal: 7,vertical: 7),
                              child: Icon(Icons.done, color: Colors.white,size: 18.w,),
                            ):SizedBox.shrink(),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 10.h),
         widget.listColors.isEmpty? SizedBox.shrink():  Row(
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

           widget.listSize.isEmpty?SizedBox.shrink():      Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:widget.listColors.map((s) {
                    return GestureDetector(onTap: () {
                      setState(() {
                        
                        colors=s;
                      });
                    },
                      child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.w),
                        child: Stack(alignment: AlignmentDirectional.topEnd,
                          children: [
                            Container(
                              height:60.w,
                              width: 170.w,
                              alignment: AlignmentDirectional.center,
                              margin: EdgeInsetsDirectional.only(bottom: 10.h),
                              padding: EdgeInsetsDirectional.symmetric(
                                vertical:10.h,
                                horizontal: 15.w
                              ),
                        
                              decoration: BoxDecoration(
                                color: AppColors.colorDetails,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Text(
                                s,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                              colors==s?  Container(
                              width: 45,
                              height: 35,
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(15.r),
                                  topEnd: Radius.circular(15.r),
                                ),
                              ),
                              padding: EdgeInsetsDirectional.symmetric(horizontal: 7,vertical: 7),
                              child: Icon(Icons.done, color: Colors.white,size: 18.w,),
                            ):SizedBox.shrink(),
                          ],
                        ),
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
              onPressed: (){},
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
