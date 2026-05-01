import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/model/barbar_shop/model_barbar_shop.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';
import 'booking_barbar_shop/barbar_shop_details_screen.dart';

class BarbarShopScreen extends StatefulWidget {
  const BarbarShopScreen({super.key});

  @override
  State<BarbarShopScreen> createState() => _BarbarShopScreenState();
}

class _BarbarShopScreenState extends State<BarbarShopScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "Royal Groom Package",
      "price": "Starting From 4,200 L.E",
      "imageSubCategores": Images.barbar_shop1,
      "route": BarbarShopDetailsScreen(
        data: ModelBarbarShop(
          name: "Royal Groom Package",
          listImage: [Images.royalGroomPackage],
          rate: 5.1,
          address: "Cairo, Egypt",
          price: 4200,
          details: [
            "Haircut",
            "Beard trim",
            "Gk oil treatmet",
            "Baderma facial",
            "Manicure and pedicure",
            "Grooms finishing",
          ],
          about:
              "We redefine men's grooming with precision, style, and attention to every detail because every man deserves a sharp, confident look.",
          review: 80,
        ),
      ),
    },
    {
      "nameCategores": "Groom Glow Package",
      "price": "Starting From 1,450 L.E",
      "imageSubCategores": Images.barbar_shop2,
      "route": BarbarShopDetailsScreen(
        data: ModelBarbarShop(
          name: "Groom Glow Package",
          listImage: [Images.groomGlowPackage],
          rate: 4.7,
          address: "Cairo, Egypt",
          price: 1450,
          details: [
            "Haircut",
            "Beard trim",
            "Hot oil treatmet",
            "Facial cleansing",
          ],
          about:
              "Your go-to place for clean cuts, fresh fades, and a look that speaks confidence.",
          review: 100,
        ),
      ),
    },
    {
      "nameCategores": "The Gentelman Package",
      "price": "Starting From 2,900L.E",
      "imageSubCategores": Images.barbar_shop3,
      "route": BarbarShopDetailsScreen(
        data: ModelBarbarShop(
          name:  "The Gentelman Package",
          listImage
          : [Images.theGentelmanPackage,
        Images.theGentelmanPackage2  ],
          rate: 4.8,
          address: "Cairo, Egypt",
          price: 2900,
          details:[
      "Haircut",
      "Beard trim",
      "Hot oil treatmet",
      "Manicure and pedicure",
      "Hyderafacial"

    ],
          about:
                      "Crafting timeless styles and modern looks with expert hands where elegance meets masculinity.",
          review: 100,
        ),
      ),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),

            Text(
              "Barbar Shop",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10.h),

            FillterScreen(),

            SizedBox(height: 15.h),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSubCategoryes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  mainAxisExtent: 209.h,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(listSubCategoryes[index]['route']),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.colorDetails,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(15.r),
                                topEnd: Radius.circular(15.r),
                              ),
                              child: Image.asset(
                                listSubCategoryes[index]['imageSubCategores'],
                                width: double.infinity,
                                height: 140.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 2.w,
                            ),
                            child: Text(
                              listSubCategoryes[index]['nameCategores'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 18.sp,

                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 2.w,
                            ),
                            child: Text(
                              listSubCategoryes[index]['price'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
