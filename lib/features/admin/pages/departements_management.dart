import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import '../../../core/widget/custom_button.dart';

class DepartementsManagement extends StatelessWidget {
  const DepartementsManagement({super.key,required this.listSections});
 final listSections;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Departements management",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Divider(color: AppColors.colorButton2),
                        SizedBox(height: 10),
                        SizedBox(width: MediaQuery.of(context).size.width*0.6,
                        height: MediaQuery.of(context).size.height*0.5,
                          child: Expanded(
                                        child: GridView.builder(
                                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                                          itemCount: listSections.length,
                                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            mainAxisSpacing: 15.h,
                                            mainAxisExtent: 55.h,
                                          ),
                                          itemBuilder: (context, index) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.colorButton,
                                                borderRadius: BorderRadius.circular(5.r),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional.center,
                                                child: Padding(
                          padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                          child: Text(
                            listSections[index],
                            style: GoogleFonts.inriaSerif(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                        ),
                        SizedBox(height: 30),
                     CustomButton(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: 68,
                        onPressed: () {
                        },
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
                        buttonText: "Add To Sections",
                        color: AppColors.colorButton,
                        fontSize: 24.sp,
                        
                        textColor: Colors.black,
                        isBold: true,
                        radius: 20
                      ),

                           SizedBox(height: 15.h,),
                      ],
                    ),
                  );
  }
}