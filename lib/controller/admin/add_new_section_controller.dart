 import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddNewSectionController extends GetxController {

  // قائمة المسارات (بحد أقصى 4)
  final RxList<String?> selectedImagePaths = RxList<String?>(List.generate(4, (index) => null));
  final ImagePicker _picker = ImagePicker();

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

}


