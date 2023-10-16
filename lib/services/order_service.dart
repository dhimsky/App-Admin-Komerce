import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/order_model.dart';

class OrderService {
  final String baseUrl = 'http://192.168.1.163:9000/app/komship';

  Future<Map<String, dynamic>> getOrderDetails(String orderNumber) async {
    final prefs = await SharedPreferences.getInstance();
    final bearerToken = prefs.getString('token');
    print('$bearerToken');
    print('$orderNumber');

    final response = await http.get(
      Uri.parse('$baseUrl?search=$orderNumber'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $bearerToken',
      },
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      final List<dynamic> productData = data['data']['product'];
      final List<Product> products = productData.map((item) {
        return Product.fromJson(item);
      }).toList();

      for (final product in products) {
        print('Product Name: ${product.productName}');
        print('Price: ${product.price}');
        // ... tampilkan data lainnya sesuai kebutuhan Anda ...
      }

      print('URL yang digunakan: ${Uri.parse('$baseUrl?search=$orderNumber')}');
      print('cek token : $bearerToken');
      print('Response API: ${response.body}');
      return data;
    } else if (response.statusCode == 401) {
      // Menangani kasus jika status code adalah 401 (Unauthorized)
      print('URL yang digunakan: ${Uri.parse('$baseUrl?search=$orderNumber')}');
      print('cek token : $bearerToken');
      print('Response API: ${response.body}');
      throw Exception(
          'Anda tidak memiliki otorisasi untuk mengakses data ini. Silakan login kembali.');
    } else {
      // Menangani kasus jika status code adalah selain 200 atau 401
      final errorMessage = jsonDecode(response.body)['message'] ??
          'Gagal mengambil detail pesanan';
      throw Exception(errorMessage);
    }
  }
}
