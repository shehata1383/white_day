import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/model/suit_store/model_suit_store.dart';
import 'Book_suit_store/suit_store_screen.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class SuitStore extends StatefulWidget {
  const SuitStore({super.key});

  @override
  State<SuitStore> createState() => _SuitStoreState();
}

class _SuitStoreState extends State<SuitStore> {
  List<Map<String, dynamic>> listSubCategoryes = <Map<String, dynamic>>[
    {
      "nameCategores": "Royle Black",
      "price": "12,500 L.E",
      "imageSubCategores": Images.Royle_Black,
      "route": SuitStoreScreen(
        data: ModelSuitStore(
          name: "Royal Black Wedding Suit",
          rate: 4.8,
          address: "Cairo, Egypt",
          mainImage: [Images.royal1, Images.royal2],
          listImage: [Images.royal3, Images.royal4, Images.royal5],
          price: 12500,
          details: [
      "Size:44/46/48/50/52",
      "Color:Black",
      "Material:65% Polyester,35% Viscose",
      "3 Pieces (Pants/Jacket/Vest)",
    ],
          about:
                    "The design combines elegance and absolute luxury to give you an unforgettable, sophisticated presence on your wedding day.",
          reviews: 80,
        ),
      ),
    },
    {
      "nameCategores": "Noble White",
      "price": "11,500 L.E",
      "imageSubCategores": Images.Noble_White,
      "route": SuitStoreScreen(
        data: ModelSuitStore(
          name: "Noble White Wedding Suit",
          rate: 4.7,
          address: "Cairo, Egypt",
          mainImage: [Images.noble1, Images.noble2],
          listImage: [Images.noble3, Images.royal4, Images.royal5],
          price: 11500,
          details: [
            "Size:44/46/48/50/52/54",
            "Color:White",
            "Material:65% Polyester,35% Viscose",
            "3 Pieces (Pants/Jacket/Vest)",
          ],
          about:
              "White wedding suit for the groom, perfect for a timeless and sophisticated look.",
          reviews: 90,
        ),
      ),
    },
    {
      "nameCategores": "Shadow Royal",
      "price": "13,500 L.E",
      "imageSubCategores": Images.Shadow_Royal,
      "route": SuitStoreScreen(
        data: ModelSuitStore(
          name: "Shadow Royal Wedding Suit",
          rate: 4.6,
          address: "Cairo, Egypt",
          mainImage: [Images.shadow1, Images.shadow2],
          listImage: [Images.shadow3, Images.shadow4, Images.shadow5],
          price: 12500,
          details: [
      "Size:44/46/48/50/52",
      "Color:Black",
      "Material:65% Polyester,35% Viscose",
      "2 Pieces (Pants/Jacket)",
    ],
          about:  
                    "Step into your wedding day with this sleek Burgundy suit, designed to exude confidence, elegance, and unforgettable charm for the groom.",
          reviews: 99,
        ),
      ),
    },
    {
      "nameCategores": "Velet Burgundy",
      "price": "12,500 L.E",
      "imageSubCategores": Images.Velet_Burgundy,
      "route":  SuitStoreScreen(
        data: ModelSuitStore(
          name:  "Velet Burgundy Wedding Suit",
          rate: 4.6,
          address: "Cairo, Egypt",
          mainImage: [Images.velet1, Images.velet2],
          listImage: [Images.velet3, Images.velet4, Images.velet5],
          price: 12500,
          details: [
      "Size:46/48/50/52/58/60",
      "Color:Burgundy",
      "Material:65% Polyester,35% Viscose",
      "3 Pieces (Pants/Jacket/Vest)",
    ],
          about:  
                    "Step into your wedding day with this sleek Burgundy suit, designed to exude confidence, elegance, and unforgettable charm for the groom.",
          reviews: 75,
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
              "Suits",
              style: GoogleFonts.inriaSerif(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
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
                  mainAxisExtent: 190.h,
                ),
                itemBuilder: (context, index) {
                  var suilt = listSubCategoryes[index];

                  return InkWell(
                    onTap: () {
                      if (suilt['route'] != null) {
                        Get.to(suilt['route']);
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
                              suilt['imageSubCategores'],
                              width: double.infinity,
                              height: 140.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  suilt['nameCategores'],
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(
                                    suilt['price'],
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 14.sp,
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

  Widget _buildHeader() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Image.asset(Images.logo, width: 300.w),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(Images.appbarStyle, width: 80.w),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(Images.appbarStyle, width: 80.w),
        ),
      ],
    );
  }

  Widget _buildFilters() {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
    );
  }

  Widget _buildActiveFilter(
    String label,
    String? currentValue,
    List<DropdownMenuItem<String>> items,
    Function(String?) onChanged,
  ) {
    return Container(
      width: 140.w,
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.colorfilter,
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: currentValue,
          hint: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: GoogleFonts.inriaSerif(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              const Icon(Icons.unfold_more, size: 18),
            ],
          ),
          isExpanded: true,
          icon: const SizedBox.shrink(),
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
