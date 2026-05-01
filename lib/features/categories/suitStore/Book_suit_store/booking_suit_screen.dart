// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../widget/appbar_logo_screen.dart';

class BookingSuitScreen extends StatefulWidget {
  BookingSuitScreen({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    required this.listSize,
  });
  String image1;
  String image2;
  String title;
  List<int> listSize;
  @override
  State<BookingSuitScreen> createState() => _BookingSuitScreenState();
}

class _BookingSuitScreenState extends State<BookingSuitScreen> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.image1, height: 200.h,width: MediaQuery.of(context).size.width*0.5, fit: BoxFit.cover),
                Image.asset(widget.image2, height: 200.h, width: MediaQuery.of(context).size.width*0.5,fit: BoxFit.cover),
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
            SizedBox(height: 15.h),
            widget.listSize.isEmpty
                ? SizedBox.shrink()
                : Row(crossAxisAlignment: CrossAxisAlignment.start,
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

                      widget.listSize.isEmpty
                          ? SizedBox.shrink()
                          : SizedBox(height: 200.h,
                          width: 250.w,
                            child: GridView.builder(
                                itemCount: widget.listSize.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          3, // عدد الأعمدة (مثلاً 2 للأدوية)
                                      crossAxisSpacing:
                                          10, // المسافة الأفقية بين العناصر
                                      mainAxisSpacing:
                                          10, // المسافة الرأسية بين العناصر
                                      childAspectRatio:
                                          1, // نسبة الطول إلى العرض (لجعل البطاقة مستطيلة)
                                    ),
                                itemBuilder: (_, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        size = widget.listSize[index];
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        start: 10.w,
                                      ),
                                      child: Stack(
                                        alignment: AlignmentDirectional.topEnd,
                                        children: [
                                          Container(
                                            width: 60.w,
                                            alignment:
                                                AlignmentDirectional.center,
                                            margin: EdgeInsetsDirectional.only(
                                              bottom: 10.h,
                                            ),
                                            padding:
                                                EdgeInsetsDirectional.symmetric(
                                                  vertical: 10.h,
                                                  horizontal: 15.w,
                                                ),
                            
                                            decoration: BoxDecoration(
                                              color: AppColors.colorDetails,
                                              borderRadius: BorderRadius.circular(
                                                15.r,
                                              ),
                                            ),
                                            child: Text(
                                              widget.listSize[index].toString(),
                                              style: GoogleFonts.inriaSerif(
                                                fontSize: 26.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          size == widget.listSize[index]
                                              ? Container(
                                                  width: 45,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.colorButton2,
                                                    borderRadius:
                                                        BorderRadiusDirectional.only(
                                                          bottomStart:
                                                              Radius.circular(
                                                                15.r,
                                                              ),
                                                          topEnd: Radius.circular(
                                                            15.r,
                                                          ),
                                                        ),
                                                  ),
                                                  padding:
                                                      EdgeInsetsDirectional.symmetric(
                                                        horizontal: 7,
                                                        vertical: 7,
                                                      ),
                                                  child: Icon(
                                                    Icons.done,
                                                    color: Colors.white,
                                                    size: 18.w,
                                                  ),
                                                )
                                              : SizedBox.shrink(),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                          ),
                    ],
                  ),
            SizedBox(height: 10.h),

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
