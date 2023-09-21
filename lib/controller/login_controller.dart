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

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Future<MyResponse> login() async {
  http.Response result = await _repository.login(
      emailController.text, passwordController.text);

  print("cek ${result.body}");

  if (result.statusCode == 200) {
    print('Berhasil login');
    Map<String, dynamic> myBody = jsonDecode(result.body);
    MyResponse<User> myResponse = MyResponse.fromJson(myBody, User.fromJson);

    if (myResponse.status == 200) {
      final prefs = await SharedPreferences.getInstance();

      // Simpan data token
      await prefs.setString('token', myResponse.data?.token ?? "");
      print('Token telah disimpan: ${myResponse.data?.token}');

      // Load token dari SharedPreferences
      String? token = prefs.getString('token');
      if (token != null) {
        // Token berhasil dimuat, Anda dapat menggunakannya
        print('Token: $token');
      } else {
        // Token tidak ditemukan di SharedPreferences
        print('Token tidak ditemukan');
      }
    }

    return myResponse;
  } else {
    return MyResponse(status: 1, message: "Terjadi kesalahan. Coba lagi");
  }
}

}
