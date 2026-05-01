import 'model_make_up_artist_service.dart';

class ModelMakeupCategory {
  String mainImage;
  String name;
  double rate;
  String address;
  List<String> listImage;
  int price;
  List<String> details;
  String about;
  int reviews;
List<ModelMakeUpArtistService> listService;
  ModelMakeupCategory({
    required this.name,
    required this.rate,
    required this.address,
    required this.mainImage,
    required this.listImage,
    required this.price,
    required this.details,
    required this.about,
    required this.reviews,
    required this.listService,
  });
}
