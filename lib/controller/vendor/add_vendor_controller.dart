 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddVendorController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController jobController;
  late TextEditingController offerController;
  late TextEditingController priceController;
  late TextEditingController validUntillController;
  // قائمة المسارات (بحد أقصى 4)
  final RxList<String?> selectedImagePaths = RxList<String?>(List.generate(4, (index) => null));
  final ImagePicker _picker = ImagePicker();
  @override
  void onInit() {
    super.onInit();
    jobController = TextEditingController();
    offerController = TextEditingController();
    priceController = TextEditingController();
    validUntillController = TextEditingController();
  }

  // دالة اختيار صورة لخانة محددة
  Future<void> pickImage(int index) async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        selectedImagePaths[index] = image.path;
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  // دالة حذف صورة من خانة محددة
  void removeImage(int index) {
    selectedImagePaths[index] = null;
  }
@override
  void dispose() {
    jobController.dispose();
    offerController.dispose();
    priceController.dispose();
    validUntillController.dispose();
    super.dispose();
  }
}


