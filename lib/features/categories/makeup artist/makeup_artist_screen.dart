import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/model/make_up/model_make_up_artist_service.dart';
import '../../../core/model/make_up/model_makeup_category.dart';
import 'Book_makeup_artist/make_up_screen.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class MakeupArtistScreen extends StatefulWidget {
  const MakeupArtistScreen({super.key});

  @override
  State<MakeupArtistScreen> createState() => _MakeupArtistScreenState();
}

class _MakeupArtistScreenState extends State<MakeupArtistScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "By-Sara salama",
      "price": "Starting from 5,500L.E",
      "imageSubCategores": Images.makeup1,
      "route": MakeUpScreen(
        data: ModelMakeupCategory(
          name: "Sara Salama",
          rate: 4.9,
          address: "Cairo, Egypt",
          mainImage: 'assets/Sara_Salama/Sara_Salama_1.png',
          listImage: [
            'assets/images/makeup1.png',
            'assets/Sara_Salama/Sara_Salama_2.png',
            'assets/Sara_Salama/Sara_Salama_3.png',
            'assets/Sara_Salama/Sara_Salama_4.png',
          ],
          price: 5500,
          details: [
            "Bridal Makeup",
            "Engagement Makeup",
            "Party & Event makeup",
            "Hairstyling",
          ],
          about:
              "Sara salama is professional makeup artist based in Cairo, Egypt.She specializes in creating elegant and long- lasting makeup looks for brides and special occasions. Sara uses high-quality products to ensure a flawless and beautiful result.",
          reviews: 110,
          listService: [
            ModelMakeUpArtistService(
              serviceName: 'Engagement Makeup',
              servicePrice: 8000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Bridal Makeup',
              servicePrice: 11000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Party& Event Makeup',
              servicePrice: 5500,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Hairstyling',
              servicePrice: 9000,
            ),
          ],
        ),
      ),
    },
    {
      "nameCategores": "By-yasmin ahmed",
      "price": "Starting from 6,500L.E",
      "imageSubCategores": Images.makeup2,
      "route": MakeUpScreen(
        data: ModelMakeupCategory(
          name: "Yasmin Ahmed",
          rate: 4.8,
          address: "Cairo, Egypt",
          mainImage: 'assets/Yasmin_Ahmed/YasminAhmed_1.png',
          listImage: [
            'assets/Yasmin_Ahmed/YasminAhmed_2.png',
            'assets/Yasmin_Ahmed/YasminAhmed_3.png',
            'assets/Yasmin_Ahmed/YasminAhmed_4.png',
            'assets/Yasmin_Ahmed/YasminAhmed_5.png',
          ],
          price: 6500,
          details: [
            "Bridal Makeup",
            "Engagement Makeup",
            "Party & Event makeup",
            "Hairstyling",
            "Veil Stylists",
          ],
          about:
              "Yasmin Ahmed is a skilled makeup artist creating flawless, personalized looks for weddings and special occasions.",
          reviews: 120,
          listService: [
            ModelMakeUpArtistService(
              serviceName: 'Engagement Makeup',
              servicePrice: 10000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Bridal Makeup',
              servicePrice: 13000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Party& Event Makeup',
              servicePrice: 6500,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Hairstyling',
              servicePrice: 14000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Veil Stylists',
              servicePrice: 5500,
            ),
          ],
        ),
      ),
    },
    {
      "nameCategores": "By-Hend mohmed",
      "price": "Starting from 7,000L.E",
      "imageSubCategores": Images.makeup3,
      "route": MakeUpScreen(
        data: ModelMakeupCategory(
          name: "Hend Mohamed",
          rate: 5.1,
          address: "Cairo, Egypt",
          mainImage: 'assets/Hend_Mohamed/HendMohamed_1.png',
          listImage: [
            'assets/Hend_Mohamed/HendMohamed_2.png',
            'assets/Hend_Mohamed/HendMohamed_3.png',
            'assets/Hend_Mohamed/HendMohamed_4.png',
            'assets/Hend_Mohamed/HendMohamed_5.png',
          ],
          price: 7000,
          details: [
            "Bridal Makeup",
            "Engagement Makeup",
            "Party & Event makeup",
            "Hairstyling",
            "Veil Stylists",
          ],
          about:
              "hend Mohamed combines creativity, skill, and high-quality products to craft personalized looks that make every client feel confident, radiant, and unforgettable.",
          reviews: 100,
          listService: [
            ModelMakeUpArtistService(
              serviceName: 'Engagement Makeup',
              servicePrice: 13000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Bridal Makeup',
              servicePrice: 15000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Party& Event Makeup',
              servicePrice: 6500,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Hairstyling',
              servicePrice: 12000,
            ),
            ModelMakeUpArtistService(
              serviceName: 'Veil Stylists',
              servicePrice: 7500,
            ),
          ],
        ),
      ),
    },
    {
      "nameCategores": "By-Esraa mohmed",
      "price": "Starting from 8,000L.E",
      "imageSubCategores": Images.makeup4,
      //"route": RouteHelper.SaraS_alama,
    },
    {
      "nameCategores": "By-Rana fathy",
      "price": "Starting from 7,500L.E",
      "imageSubCategores": Images.makeup5,
      //"route": RouteHelper.SaraS_alama,
    },
    {
      "nameCategores": "By-Sohila ahmed",
      "price": "Starting from 8,500L.E",
      "imageSubCategores": Images.makeup6,
      //"route": RouteHelper.SaraS_alama,
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
              "Makeup Artists",
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
                  mainAxisExtent: 200.h,
                ),
                itemBuilder: (context, index) {
                  var item = listSubCategoryes[index];

                  return InkWell(
                    onTap: () {
                      if (item['route'] != null) {
                        Get.to(item['route']);
                      } else {
                        print("Route not found for ${item['nameCategores']}");
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(0.w),
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(15.r),
                              topEnd: Radius.circular(15.r),
                            ),
                            child: Image.asset(
                              item['imageSubCategores'],
                              width: double.infinity,
                              height: 140.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            item['nameCategores'],
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
                            item['price'],
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
