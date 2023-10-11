import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:komerce/models/verify_email_model.dart';

class VerifyEmailService {
  final String apiUrl =
      'http://192.168.1.101:9000/app'; // Ganti dengan URL API sesuai dengan kebutuhan Anda

  Future<bool> verifyEmail(VerifyEmail verifyEmail, String token) async {
    final response = await http.post(
      Uri.parse('$apiUrl/send-verify-mail'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Menggunakan token untuk otorisasi
      },
      body: jsonEncode(verifyEmail.toJson()),
    );

    if (response.statusCode == 200) {
      print('berhasil lek');
      return true;
    } else {
      print('gagal lek');
      return false;
    }
  }
}
