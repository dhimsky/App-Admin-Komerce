class Order {
  final String order_id;
  final String name;

  Order({required this.order_id, required this.name});

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      order_id: json['order_id'],
      name: json['name'],
    );
  }
}
