import 'dart:convert';

import 'package:http/http.dart' as http;

class CariOrderRepository {
  final String _baseUrl = 'http://dev.komship.komerce.my.id/api/v2/admin/order/search';

  Future getData(String search) async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl?search=$search'));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        // Lakukan sesuatu dengan jsonResponse di sini
      } else {
        print('Permintaan GET gagal dengan kode status: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan GET: $e');
    }
  }

  Future postData(String searchData) async {
    try {
      final Map<String, dynamic> requestData = {
        'search': searchData,
      };

      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        // Lakukan sesuatu dengan jsonResponse di sini
      } else {
        print('Permintaan POST gagal dengan kode status: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan POST: $e');
    }
  }
}

void main() {
  final repository = CariOrderRepository();

  // Menggunakan metode postData
  repository.postData('KOM2309117831654');
}
