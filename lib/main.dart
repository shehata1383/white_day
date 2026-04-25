import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'core/constants/app_constants.dart';
import 'core/helper/get_di.dart';
import 'core/helper/route_helper.dart';
import 'core/theme/light.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: OverlayKit(
            child: ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, child) {
                return GetMaterialApp(
                  title: AppConstants.appName,
                  theme: light(),
                  navigatorKey: Get.key,
                  initialRoute: RouteHelper.homeScreenStart,
                  debugShowCheckedModeBanner: false,
                  getPages: RouteHelper.routes,
                );
              },
            ),
          )
    );
  }
}
