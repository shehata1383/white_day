import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/core/model/vendor/special_offer_model.dart';

import '../../../core/widget/custom_button.dart';
import '../add_to_offers.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key, required this.specialOffer});
  final List<SpecialOfferModel> specialOffer;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Special offers",
          style: GoogleFonts.inriaSerif(
            // خط كلاسيكي يشبه التصميم
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Divider(
          color: AppColors.colorButton2,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        SizedBox(height: 5),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.64,
          height: MediaQuery.of(context).size.height * 0.65,
          child: Expanded(
            child: GridView.builder(
             
              itemCount: specialOffer.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15.h,
                mainAxisExtent: 270.h,
              ),
              itemBuilder: (context, index) {
                 String serveces = specialOffer[index].servecs.join(" + ");
                return Container(
                  color: Colors.white,
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 5.w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(50.r),
                        child: Image.asset(
                          Images.photograperOfer,
                          width: 300,
                          height: 200,
                        ),
                      ),
                      Text(
                        "($serveces)",
                        style: GoogleFonts.inriaSerif(
                          // خط كلاسيكي يشبه التصميم
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Price: ${NumberFormat("#,###").format(specialOffer[index].price)} L.E",
                        style: GoogleFonts.inriaSerif(
                          // خط كلاسيكي يشبه التصميم
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Valid until ${specialOffer[index].validUntil}",
                        style: GoogleFonts.inriaSerif(
                          // خط كلاسيكي يشبه التصميم
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

          ),
        ),
        SizedBox(height: 15,),
        CustomButton(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              onPressed: () {
                Get.to(()=>AddToOffers());
              },
              buttonText: "Add to Offer",
              color: AppColors.colorButton,
              fontSize: 20.sp,
              textColor: Colors.black,
              isBold: true,
              radius: 30.r,
            ),
      ],
    );
  }
}
