class OrderCardModel {
  final String trackingId;
  final String orderId;
  final String status;
  final String date;
  final int quantity;
  final int total;
  const OrderCardModel({
    required this.trackingId,
    required this.quantity,
    required this.orderId,
    required this.status,
    required this.total,
    required this.date,
  });
}
