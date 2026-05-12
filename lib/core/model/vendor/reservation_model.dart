class ReservationModel {
  String requestType;
  String vendorName;
  String clientName;
  String requestDate;
  int price;
  bool? isConfirmed;

ReservationModel({
  required this.requestType,
  required this.vendorName,
  required this.clientName,
  required this.requestDate,
  required this.price,
  required this.isConfirmed,
});
}
