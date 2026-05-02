// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/model/artist/model_artist.dart';
import '../../widget/appbar_logo_screen.dart';
import 'book_artist/artist_details_screen.dart';

class ArtistScreen extends StatelessWidget {
  ArtistScreen({super.key});

  List listSubCategoryes = [
    {
      "nameCategores": "Bahaa Sultan",
      "price": "400,000 L.E",
      "imageSubCategores": Images.artist1,
      "route": ArtistDetailsScreen(
        data: ModelArtist(
          name: "Bahaa Sultan",
          listImage: [Images.bahaaSultan1, Images.bahaaSultan2],
          rate: 4.9,
          address: "Cairo, Egypt",
          price: 400000,
          details: [
            "Duration:1 Hours",
            "Music style: Romantic/Party",
            "Band members:5",
            "Available in all governorates",
          ],
          about:
              "Bahaa Sultan is an Egyptian singer known for his smooth, romantic voice and emotional style, making him a perfect choice for weddings and special events.",
          review: 900,
        ),
      ),
    },
    {
      "nameCategores": "Mahmoud Al-Laithi",
      "price": "300,000 L.E",
      "imageSubCategores": Images.artist2,
      "route": ArtistDetailsScreen(
        data: ModelArtist(
          name: "Mahmoud Al-Laithi",
          listImage: [Images.mahmoudAlLaithi1, Images.mahmoudAlLaithi2],
          rate: 4.8,
          address: "Cairo, Egypt",
          price: 300000,
          details: [
            "Duration:1 Hours",
            "Music style: Romantic/Party",
            "Band members:15",
            "Available in all governorates",
          ],
          about:
              "Mahmoud Al-laithi is an Egyptian Shaabi singer known for his energetic style and vibrant performances. He is well-known for performing at weddings and events, creating a lively and joyful atmosphere.",
          review: 800,
        ),
      ),
    },
    {
      "nameCategores": "Tamer Hosny",
      "price": "3,000,000 L.E",
      "imageSubCategores": Images.artist3,
      "route": ArtistDetailsScreen(
        data: ModelArtist(
          name: "Tamer Hosny",
          listImage: [Images.tamerHosny1, Images.tamerHosny2],
          rate: 5.5,
          address: "Cairo, Egypt",
          price: 3000000,
          details: [
            "Duration:2 Hours",
            "Music style: Romantic/Party",
            "Band members:10",
            "Available in all governorates",
          ],
          about:
              "A talented and experienced wedding singer known for creating unforgettable moments With a unique voice and engaging stage presence, he brings energy and emotion to every event, making your special day truly magical.",
          review: 1000,
        ),
      ),
    },
    {
      "nameCategores": "Amr Diab",
      "price": "5,000,000 L.E",
      "imageSubCategores": Images.artist4,
      "route": ArtistDetailsScreen(
        data: ModelArtist(
          name: "Amr Diab",
          listImage: [Images.amrDiab1, Images.amrDiab2],
          rate: 4.7,
          address: "Cairo, Egypt",
          price: 5000000,
          details: [
            "Duration:2 Hours",
            "Music style: Romantic/Party",
            "Band members:20",
            "Available in all governorates",
          ],
          about:
              "Amr Diab is a legendary Egyptian singer known for his iconic hits, smooth voice,and energetic performances, making him a perfect choice for weddings and high-end events.",
          review: 2000,
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
              "Artists",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10.h),
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
                                fontSize: 17.sp,

                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Padding(
                              padding: EdgeInsetsDirectional.only(end: 2.w),
                              child: Text(
                                listSubCategoryes[index]['price'],
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
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
