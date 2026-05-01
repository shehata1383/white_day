class ModelDressesCategory {
  List<String> mainImage;
  String name;
  double rate;
  String address;
  List<String> listImage;
  int price;
  List<String> details;
  String description;
  int reviews;
  List<String> listSize;
  List<String> listColors;
  ModelDressesCategory({
    required this.name,
    required this.rate,
    required this.address,
    required this.mainImage,
    required this.listImage,
    required this.price,
    required this.details,
    required this.description,
    required this.reviews,
    required this.listSize,
    required this.listColors,
  });
}
