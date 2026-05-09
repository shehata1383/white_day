import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/model/photographer/model_photographer_category.dart';
import '../../../../core/model/photographer/photographer_service.dart';
import '../../../widget/appbar_logo_screen.dart';
import '../../../widget/filtter_screen/fillter_screen.dart';
import 'Book_photographer/photographer_details_screen.dart';

class PhotographerScreen extends StatefulWidget {
  const PhotographerScreen({super.key});

  @override
  State<PhotographerScreen> createState() => _PhotographerScreenState();
}

class _PhotographerScreenState extends State<PhotographerScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "By- Agha Wedding",
      "price": "Starting from 3000 L.E",
      "imageSubCategores": Images.photo1,
      "route": PhotographerDetailsScreen(
        data: ModelPhotographerCategory(
          name: "Agha Wedding",
          rate: 4.7,
          address: "Cairo, Egypt",
          mainImage: [Images.agha1, Images.agha2],
          listImage: [Images.agha3, Images.agha4, Images.agha5, Images.agha6],
          price: 3000,
          details: ["Prepartion", "Session", "Church", "Party"],
          about:
              "(Agha weddings) is a professional photography service specialized in capturing wedding ceremonies and bridal events.",
          reviews: 102,
          listService: [
            PhotographerService(serviceName: 'Preparation', servicePrice: 3000),
            PhotographerService(serviceName: 'Session', servicePrice: 5000),
            PhotographerService(serviceName: 'Church', servicePrice: 3500),
            PhotographerService(serviceName: 'Party', servicePrice: 3000),
          ],
        ),
      ),
    },
    {
      "nameCategores": "By- Dart Wedding",
      "price": "Starting from 12,000 L.E",
      "imageSubCategores": Images.dart2,
      "route": PhotographerDetailsScreen(
        data: ModelPhotographerCategory(
          name: "Dart Wedding",
          rate: 4.9,
          address: "Cairo, Egypt",
          mainImage: [Images.dart1, Images.dart2],
          listImage: [Images.dart3, Images.dart4, Images.dart5, Images.dart6],
          price: 12000,
          details: ["Prepartion", "Session", "Church", "Party"],
          about:
              "Wedding photographer capturing your most special moments and memories.",
          reviews: 110,
          listService: [
            PhotographerService(serviceName: 'Preparation', servicePrice: 12000),
            PhotographerService(serviceName: 'Session', servicePrice: 20000),
            PhotographerService(serviceName: 'Church', servicePrice: 14000),
            PhotographerService(serviceName: 'Party', servicePrice: 12000),
          ],
        ),
      ),
    },
    {
      "nameCategores": "By-Aboutaleb Wedding",
      "price": "Starting from 15,000 L.E",
      "imageSubCategores": Images.aboutaleb3,
      "route":  PhotographerDetailsScreen(
        data: ModelPhotographerCategory(
          name:"Aboutaleb Wedding",
          rate: 5.1,
          address: "Cairo, Egypt",
          mainImage: [Images.aboutaleb1, Images.aboutaleb2],
          listImage: [Images.aboutaleb3, Images.aboutaleb4, Images.aboutaleb5, Images.aboutaleb6],
          price: 15000,
          details: ["Prepartion", "Session", "Church", "Party"],
          about:
                    "I specialize in wedding photography, capturing love, laughter, and all the unforgettable moments that make your special day truly magical.",
          reviews: 120,
          listService: [
            PhotographerService(serviceName: 'Preparation', servicePrice: 15000),
            PhotographerService(serviceName: 'Session', servicePrice: 25000),
            PhotographerService(serviceName: 'Church', servicePrice: 17000),
            PhotographerService(serviceName: 'Party', servicePrice: 15000),
          ],
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
              "Photographers",
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
                  mainAxisExtent: 205.h,
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
                              borderRadius: BorderRadius.circular(0.r),
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
                          SizedBox(height: 8.h),
                          Text(
                            listSubCategoryes[index]['nameCategores'],
                            style: GoogleFonts.inriaSerif(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            listSubCategoryes[index]['price'],
                            style: GoogleFonts.inriaSerif(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
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
