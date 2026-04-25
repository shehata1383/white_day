// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/helper/route_helper.dart';
import '../../controller/home/home_controll.dart';
import '../../core/constants/images.dart';
import '../../core/widget/custom_button.dart';
import 'widget/reviews_widget.dart';

class HomeScreenStart extends StatelessWidget {
  const HomeScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllImp>(
      builder: (homeControllImp) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    Images.logo,
                    width: 180.w,
                    height: 90.h,
                    fit: BoxFit.cover,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 135.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Images.ourServices),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5.h,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.colorButton.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          child: Text(
                            "Reserve Now",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  CustomButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.homeScreen);
                    },
                    buttonText: "Our Services",
                    color: AppColors.colorButton,
                    fontSize: 22.sp,
                    textColor: Colors.black,
                    isBold: true,
                    width: 170.w,
                    height: 35.h,
                    radius: 12,
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: homeControllImp.listSubCategoryes.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.w,
                        mainAxisSpacing: 10.h,
                        mainAxisExtent: 125.h,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () =>
                              Get.toNamed( homeControllImp.listSubCategoryes[index].page!),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                               homeControllImp.listSubCategoryes[index].nameCategory!,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                   homeControllImp. listSubCategoryes[index].image!,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                    decoration: BoxDecoration(
                      color: AppColors.colorButton,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Reviews",
                      style: GoogleFonts.inriaSerif(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: homeControllImp.reviews.length,
                    itemBuilder: (context, index) {
                      return ReviewsWidget(review:homeControllImp. reviews[index]);
                    },
                  ),
        
                  SizedBox(height: 20.h),
        
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(
                          onPressed: () => Get.toNamed(RouteHelper.signIn),
                          buttonText: "Login",
                          color: AppColors.colorButton,
                          fontSize: 20,
                          width: 140.w,
                          height: 35.h,
                          textColor: Colors.black,
                        ),
                        CustomButton(
                          onPressed: () => Get.toNamed(RouteHelper.signUpChooseScreen),
                          buttonText: "Create account",
                          color: AppColors.colorButton,
                          fontSize: 20,
                          width: 142.w,
                          height: 35.h,
                          textColor: Colors.black,
                        ),
                       
                      ],
                    ),
                  ),
                   SizedBox(height: 10.h,),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Padding(
                              padding:  EdgeInsetsDirectional.only(start: 10),
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Conctact us:',style: GoogleFonts.inter(fontSize: 20),),
                                 Text('01272017621',style: GoogleFonts.inter(fontSize: 18),),
                          Text('Whitedayweddingplanner@gmail.com',style: GoogleFonts.inter(fontSize: 18),),],
                              ),
                            )),
                         
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
