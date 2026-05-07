class ModelWeddingHall {
  String mainImage;
  String name;
  double rate;
  String address;
  List<String> listImage;
  int price;
  List<String> details;
  String about;
  int reviews;
  List<Package> packages;
  ModelWeddingHall({
    required this.mainImage,
    required this.name,
    required this.rate,
    required this.address,
    required this.listImage,
    required this.price,
    required this.details,
    required this.about,
    required this.reviews,
    required this.packages,
  });
}

class Package{
  int price;
  String packageName;
  List<String> packageDetailes;
  Package({
    required this.packageName,
    required this.price,
    required this.packageDetailes,
  });
}
