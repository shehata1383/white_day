import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/model/dresses/model_dresses_category.dart';
import 'Book_Dress/dress_screen.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class WeddingDressScreen extends StatefulWidget {
  const WeddingDressScreen({super.key});

  @override
  State<WeddingDressScreen> createState() => _WeddingDressScreenState();
}

class _WeddingDressScreenState extends State<WeddingDressScreen> {
  List<Map<String, dynamic>> listSubCategoryes = [
    {
      "nameCategores": "Royal Dream",
      "price": "10,000 L.E",
      "imageSubCategores": Images.dress1,
      "route": DressScreen(
        data: ModelDressesCategory(
          name: "Royal Dreem Wedding Dress",
          rate: 4.8,
          address: "Cairo, Egypt",
          mainImage: [
            'assets/Royal_Dream/RoyalDream1.png',
            'assets/Royal_Dream/RoyalDream2.png',
          ],
          listImage: [
            'assets/Royal_Dream/RoyalDream3.png',
            'assets/Royal_Dream/RoyalDream4.png',
            'assets/Royal_Dream/RoyalDream5.png',
            'assets/Royal_Dream/RoyalDream6.png',
          ],
          price: 10000,
          details: [
            "Size: S/M/L",
            "Color:White",
            "Fabric:Lace & Tulle",
            "Style:Straight",
            "Extension",
          ],
          description:
              "This elegant wedding dress features delicate lace details, perfect for brides looking for a romantic and classic look.",

          reviews: 80,
          listSize: ['s', 'm', 'l'],
          listColors: [],
        ),
      ),
    },
    {
      "nameCategores": "Golden Queen",
      "price": "15,000 L.E",
      "imageSubCategores": Images.dress2,
      "route": DressScreen(
        data: ModelDressesCategory(
          name: "Golden Queen Engagement Dress",
          rate: 4.9,
          address: "Cairo, Egypt",
          mainImage: [
            'assets/Golden_Queen/GoldenQueen1.png',
            'assets/Golden_Queen/GoldenQueen2.png',
          ],
          listImage: [
            'assets/Golden_Queen/GoldenQueen3.png',
            'assets/Golden_Queen/GoldenQueen4.png',
            'assets/Golden_Queen/GoldenQueen5.png',
            'assets/Golden_Queen/GoldenQueen6.png',
          ],
          price: 15000,
          details: [
            "Size: S/M/L/XL",
            "Color:Gold/ Baby Blue",
            "Fabric:Lace & Tulle",
            "Style:Straight",
          ],
          description:
              "An elegant, soft dress with a romantic touch, perfect for an engagement or a classy look for the bride or groom's sister, giving you a calm and charming appearance.",

          reviews: 90,
          listSize: ['s', 'm', 'l', 'xl'],
          listColors: ['Gold', 'Baby blue'],
        ),
      ),
    },
    {
      "nameCategores": "Moonlight",
      "price": "17,000 L.E",
      "imageSubCategores": Images.dress3,
      "route": DressScreen(
        data: ModelDressesCategory(
          name: "Moonlight Wedding Dress",
          rate: 4.9,
          address: "Cairo, Egypt",
          mainImage: [
            'assets/images/moonLight1.jpg',
            'assets/images/moonLight2.jpg',
          ],
          listImage: [
      'assets/images/moonLight3.jpg',
      'assets/images/moonLight4.jpg',
      'assets/images/moonLight5.jpg',
      'assets/images/moonLight6.jpg',
    ],
          price: 17000,
          details: [
      "Size: S/M/L",
      "Color:White",
      "Fabric:Lace & Tulle",
      "Style:Straight",
      "Extension /Long Wedding Veil",
    ],
          description:
"This is a bridal dress, perfect for a Katb Kitab. It's elegant, soft, and beautifully designed for a simple yet classy look.",               

          reviews: 75,
          listSize: ['s','m','l'],
          listColors: [],
        ),
      ),
    },
    {
      "nameCategores": "Diamond Glow",
      "price": "11,500 L.E",
      "imageSubCategores": Images.dress4,
      "route": DressScreen(
        data: ModelDressesCategory(
          name:  "Diamond Glow Soiree Dress",
          rate: 4.6,
          address: "Cairo, Egypt",
          mainImage: [
            Images.diamondGlow1,
            Images.diamondGlow2,
          ],
          listImage: [
      Images.diamondGlow3,
  Images.diamondGlow4,
    Images.diamondGlow5,
     Images.diamondGlow6,
    ],
          price: 11500,
          details:[
      "Size: S/M/L/XL",
      "Color Off:White/Rose Pink",
      "Fabric:Lace & Tulle",
      "Style:Straight",
    ],
          description:
                    "A soft, elegant dress designed for engagements or special wedding moments.Its romantic style and delicate details create a graceful, feminine look.",

          reviews: 100,
          listSize: ['s','m'],
          listColors: ['Off wihte','Rose Pink'],
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
              "Dresses",
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
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
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
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text(
                              item['nameCategores'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                item['price'],
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
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
