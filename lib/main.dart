import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/helper/get_di.dart';
import 'my_app.dart';

void main() async {
  // Initialize controller
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync<SharedPreferences>(
    () async => await SharedPreferences.getInstance(),
    permanent: true,
  );
  await GetStorage.init();
  await init();
  runApp(MyApp());
}
