import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/core/model/vendor/special_offer_model.dart';

import '../../../../core/widget/custom_button.dart';
import 'add_to_offers.dart';

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
            fontSize: 22.sp, // زيادة طفيفة للوضوح
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Divider(
          color: AppColors.colorButton2,
          thickness: 1,
      
        ),
        SizedBox(height: 10.h),
        
        // استخدام Expanded مباشرة داخل Column ليعطي القائمة المساحة المتبقية
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: specialOffer.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 20.h,
              mainAxisExtent: 265.h, // زيادة الارتفاع ليتناسب مع محتوى العرض
            ),
            itemBuilder: (context, index) {
              // تحويل قائمة الخدمات إلى نص مفصول بـ +
              String services = specialOffer[index].servecs.join(" + ");
              
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    // الصورة العلوية للعرض
                    ClipRRect(
                      borderRadius: BorderRadius.circular( 25.r),
                      child: Image.asset(
                        Images.photograperOfer,
                        width:180.w,
                        height: 160.h,
                        fit: BoxFit.cover,
                      
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text(
                            "($services)",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Price: ${NumberFormat("#,###").format(specialOffer[index].price)} L.E",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Valid until ${specialOffer[index].validUntil}",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        
        // زر الإضافة في الأسفل مع مساحة أمان
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: CustomButton(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 50.h,
            onPressed: () {
              Get.to(() => const AddToOffers());
            },
            buttonText: "Add to Offer",
            color: AppColors.colorButton,
            fontSize: 20.sp,
            textColor: Colors.black,
            isBold: true,
            radius: 30.r,
          ),
        ),
      ],
    );
  }
}