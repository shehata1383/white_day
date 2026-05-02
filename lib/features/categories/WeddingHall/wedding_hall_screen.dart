// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/model/wedding_hall/model_wedding_hall.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';
import 'Book_the_halls/wedding_hall_details_screen.dart';

class WeddingHallScreen extends StatefulWidget {
  const WeddingHallScreen({super.key});

  @override
  State<WeddingHallScreen> createState() => _WeddingHallScreenState();
}

class _WeddingHallScreenState extends State<WeddingHallScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "Rixoz Plaza Hall",
      "price": "starting from 20,000 L.E",
      "imageSubCategores": Images.Rixos_Plaza_Hall,
      "route": WeddingHallDetailsScreen(
        data: ModelWeddingHall(
          mainImage: 'assets/images/Rixos_Plaza_Hall.png',
          name: "Rixoz Plaza Wedding Hall",
          rate: 4.8,
          address: "Cairo, Egypt",
          listImage: [
            'assets/imge_Book_the_halls/Rixos_Plaza_Wedding_Hall_1.png',
            'assets/imge_Book_the_halls/Rixos_Plaza_Wedding_Hall_2.png',
            'assets/imge_Book_the_halls/Rixos_Plaza_Wedding_Hall_3.png',
            'assets/images/Rixos_Plaza_Hall.png',
          ],
          price: 20000,
          details: [
            "Capacity: 300 Gusets",
            "Parking Available",
            "Air Conditioning",
            "Bridal Room",
            "Lighting & sound system",
            "Custom Decoration Available",
            "Set Menu Optios",
            "kids Area",
            "Live Band",
            "Dj Avalible",
          ],
          about:
              "A modern and elegant venue designed for unforgettable celebrations, offering premium services, a spacious setting, and a warm, welcoming atmosphere for your special day.",
          reviews: 120,
        ),
      ),
    },
    {
      "nameCategores": "Cinderella Hall",
      "price": "starting from 23,000 L.E",
      "imageSubCategores": Images.Cinderella_Hall,
      "route": WeddingHallDetailsScreen(
        data: ModelWeddingHall(
          mainImage: 'assets/images/Cinderella_Hall.png',
          name: "Cinderella Wedding Hall",
          rate: 4.9,
          address: "10th of Ramadan , Al Safwa club",
          listImage: [
            'assets/imge_Book_the_halls/Cinderella_Wedding_Hall_1.png',
            'assets/imge_Book_the_halls/Cinderella_Wedding_Hall_2.png',
            'assets/imge_Book_the_halls/Cinderella_Wedding_Hall_3.png',
            'assets/imge_Book_the_halls/Cinderella_Wedding_Hall_4.png',
          ],
          price: 23000,
          details: [
            "Capacity; 250 Gusets",
            "Cinderella (Open Air)",
            "Custom Decoration Available",
            "Set Meun Options",
            "Light System & Sound system ",
            "4K Video ",
            "Dance Floor",
            "Bridal Room",
            "Dj Avalible",
            "Live Band",
          ],
          about:
              "A modern and elegant venue designed for unforgettable celebrations, offering premium services, a spacious setting, and a warm, welcoming atmosphere for your special day.",
          reviews: 130,
        ),
      ),
    },
    {
      "nameCategores": "Arkan Hall",
      "price": "starting from 25,000 L.E",
      "imageSubCategores": Images.Arkan_Hall,
      "route": WeddingHallDetailsScreen(
        data: ModelWeddingHall(
          mainImage: 'assets/images/Arkan_Hall.png',
          name: "Arkan Wedding Hall",
          rate: 5.1,
          address: "10th of Ramadan , Al Safwa club",
          listImage: [
            'assets/imge_Book_the_halls/Arkan_Wedding_Hall_1.png',
            'assets/imge_Book_the_halls/Arkan_Wedding_Hall_2.png',
            'assets/imge_Book_the_halls/Arkan_Wedding_Hall_3.png',
            'assets/imge_Book_the_halls/Arkan_Wedding_Hall_4.png',
          ],
          price: 25000,
          details: [
            "Capacity; 250 Gusets",
            "Light System & Sound system",
            "Bridal Room",
            "Dance Floor",
            "Air Conditioning",
            "4K Video",
            "Set Meun Options",
            "Dj Avalible",
            "Live Band",
            "Fire Show",
          ],
          about:
              "A stylish and spacious venue designed to create unforgettable moments, offering a perfect atmosphere, premium services, and exceptional comfort for your special occasions.",
          reviews: 100,
        ),
      ),
    },
    {
      "nameCategores": "Askar Hall",
      "price": "starting from 90,000 L.E",
      "imageSubCategores": Images.Askar_Hall,
      "route": WeddingHallDetailsScreen(
        data: ModelWeddingHall(
          mainImage: 'assets/images/Askar_Hall.png',
          name: "Askar Wedding Hall",
          rate: 5.2,
          address: "Cairo, Egypt",
          listImage: [
            'assets/imge_Book_the_halls/Askar_Wedding_Hall_1.png',
            'assets/imge_Book_the_halls/Askar_Wedding_Hall_2.png',
            'assets/imge_Book_the_halls/Askar_Wedding_Hall_3.png',
            'assets/imge_Book_the_halls/Askar_Wedding_Hall_4.png',
          ],
          price: 90000,
          details: [
            "Capacity; 350 Gusets",
            "Open Air ",
            "Dance Floor",
            "Bridal Room",
            "Light System & Sound system ",
            "Fire Show ",
            "Set Meun Options",
            "4K Video ",
            "Live Band ",
            "Dj Avalible",
          ],
          about:
              "An elegant and modern hall crafted to host your most special moments, combining a luxurious atmosphere, high-quality services, and a welcoming space for unforgettable celebrations.",
          reviews: 200,
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
              "The Halls",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10.h),
            FillterScreen(),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSubCategoryes.length,
                itemBuilder: (context, index) {
                  var hall = listSubCategoryes[index];

                  return InkWell(
                    onTap: () {
                      if (hall['route'] != null) {
                        Get.to(hall['route']);
                      } else {
                        print(
                          "Route is still null for ${hall['nameCategores']}",
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      decoration: BoxDecoration(
                        color: Color(0xFFE8CDC0),
                        borderRadius: BorderRadiusDirectional.circular(15.r),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.only(
                              topLeft: Radius.circular(15.r),
                              topRight: Radius.circular(15.r),
                            ),
                            child: Image.asset(
                              hall['imageSubCategores'],
                              width: double.infinity,
                              height: 160.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      hall['nameCategores'],
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      hall['price'],
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Book now",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
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
