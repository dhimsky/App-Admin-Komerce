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
    http.Response result = await _repository.login(
        usernameController.text, passwordController.text);

    if (result.statusCode == 200) {
      print('Berhasil login');
      Map<String, dynamic> myBody = jsonDecode(result.body);

      // Simpan token dari respons
      String? token = myBody['token'];

      if (token != null) {
        final prefs = await SharedPreferences.getInstance();

        // Simpan data token ke SharedPreferences
        await prefs.setString('token', token);
        print('Token telah disimpan');
      } else {
        // Handle jika token tidak ditemukan dalam respons
        print('Token tidak ditemukan dalam respons');
      }

      // mengembalikan respons yang telah dimodifikasi
      return MyResponse(status: 200, message: "Login berhasil", data: myBody);
    } else {
      return MyResponse(status: 1, message: "Terjadi kesalahan. Coba lagi");
    }
  }
}
