 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddNewSectionController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController phoneNumberController;
  late TextEditingController yearController;
  late TextEditingController priceController;
  late TextEditingController noteController;
   late TextEditingController typeOfCarController;
   late TextEditingController phoneNumberCarController;
   late TextEditingController detailsController;
  late TextEditingController  noteCarController;
   late TextEditingController priceCarController;
   late TextEditingController sectionController;
  // قائمة المسارات (بحد أقصى 4)
  final RxList<String?> selectedImagePaths = RxList<String?>(List.generate(4, (index) => null));
  final ImagePicker _picker = ImagePicker();
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    yearController = TextEditingController();
    priceController = TextEditingController();
    noteController = TextEditingController();
      typeOfCarController= TextEditingController();
    phoneNumberCarController= TextEditingController();
    detailsController= TextEditingController();
    noteCarController= TextEditingController();
    priceCarController= TextEditingController();
    sectionController= TextEditingController();
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
    nameController.dispose();
    phoneNumberController.dispose();
    yearController.dispose();
    priceController.dispose();
    noteController.dispose();
    typeOfCarController.dispose();
    phoneNumberCarController.dispose();
    detailsController.dispose();
    noteCarController.dispose();
    priceCarController.dispose();
    sectionController.dispose();
    super.dispose();
  }
}


