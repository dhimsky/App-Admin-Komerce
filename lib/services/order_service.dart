import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:komerce/models/order_model.dart';

class OrderController {
  Future<Order?> getOrderById(String orderId) async {
    final response = await http.get(
      Uri.parse('https://650a694edfd73d1fab085713.mockapi.io/order/$orderId'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return Order.fromJson(data);
    } else {
      return null;
    }
  }
}
