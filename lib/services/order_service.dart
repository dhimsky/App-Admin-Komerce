import 'dart:convert';
import 'package:http/http.dart' as http;

class OrderService {
  final String baseUrl = 'https://dev.komship.komerce.my.id/api/v2/admin/order';

  Future<Map<String, dynamic>> getOrderDetails(String orderNumber) async {
    final bearerToken =
        'GATEWAYKOMSHIPKOMERCE'; // Ganti dengan token bearer yang sesuai.
    final response = await http.get(
      Uri.parse('$baseUrl/search?search=$orderNumber'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization':
            'Bearer $bearerToken', // Sesuaikan format header otorisasi.
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      print(
          'URL yang digunakan: ${Uri.parse('$baseUrl/search?search=$orderNumber')}');
      print('cek token : $bearerToken');
      print('Response API: ${response.body}');
      return data;
    } else if (response.statusCode == 401) {
      // Menangani kasus jika status code adalah 401 (Unauthorized)
      print(
          'URL yang digunakan: ${Uri.parse('$baseUrl/search?search=$orderNumber')}');
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
