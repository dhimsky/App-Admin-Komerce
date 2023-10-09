import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:komerce/models/response_model.dart';
import 'package:komerce/services/login_service.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

class LoginController {
  LoginRepository _repository = LoginRepository();
  bool isLoading = false;
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  Future<MyResponse> login() async {
    try {
      // Validasi input
      String username = usernameController.text.trim(); // Menghapus spasi di awal dan akhir
      String password = passwordController.text.trim(); // Menghapus spasi di awal dan akhir

      if (username.isEmpty || password.isEmpty) {
        return MyResponse(status: 1, message: "Username dan password harus diisi");
      }

      // Validasi panjang password
      if (password.length < 8) {
        return MyResponse(status: 1, message: "Password harus memiliki minimal 8 karakter");
      }

      // Validasi password tidak mengandung spasi
      if (password.contains(' ')) {
        return MyResponse(status: 1, message: "Password tidak boleh mengandung spasi");
      }

      http.Response result = await _repository.login(username, password);

      if (result.statusCode == 200) {
        Map<String, dynamic> myBody = jsonDecode(result.body);
        String? token = myBody['token'];

        if (token != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', token);
          return MyResponse(status: 200, message: "Login berhasil", data: myBody);
        } else {
          return MyResponse(status: 1, message: "Token tidak ditemukan dalam respons");
        }
      } else if (result.statusCode == 401) {
        // Handle status HTTP 401 (Unauthorized)
        return MyResponse(status: 1, message: "Username atau password salah");
      } else {
        // Handle status HTTP selain 200 dan 401
        return MyResponse(status: result.statusCode, message: "Login gagal");
      }
    } catch (e) {
      // Tangani pengecualian, misalnya masalah koneksi
      return MyResponse(status: 1, message: "Terjadi kesalahan. Coba lagi");
    }
  }
}


