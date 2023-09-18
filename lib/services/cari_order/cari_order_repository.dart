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
        print('Permintaan gagal dengan kode status: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
  }
}

void main() {
  final repository = CariOrderRepository();
  repository.getData('KOM2309117831654');
}
