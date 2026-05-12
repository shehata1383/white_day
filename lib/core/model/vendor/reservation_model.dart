class ReservationModel {
  String requestType;
  String resevationType;
  String vendorName;
  String clientName;
  String requestDate;
  String time;
  String place;
  int price;
  bool? isConfirmed;

ReservationModel({
  required this.requestType,
  required this.resevationType,
  required this.vendorName,
  required this.clientName,
  required this.requestDate,
  required this.price,
  required this.time,
  required this.place,
  required this.isConfirmed,
});
}
