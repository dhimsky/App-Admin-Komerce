import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:komerce/models/login/my_response.dart';
import 'package:komerce/services/login/login_repository.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/login/user_model.dart';

class LoginController {
  LoginRepository _repository = LoginRepository();

  bool isLoading = false;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Future<MyResponse> login() async {
    http.Response result =
        await _repository.login(emailController.text, passwordController.text);

    if (result.statusCode == 200) {
      Map<String, dynamic> myBody = jsonDecode(result.body);
      MyResponse<User> myResponse = MyResponse.fromJson(myBody, User.fromJson);

      debugPrint("${myResponse.message}");

      if (myResponse.status == 200) {
        final prefs = await SharedPreferences.getInstance();

        //simpan data token
        await prefs.setString('token', myResponse.data?.token ?? "");
      }

      return myResponse;
    } else {
      return MyResponse(status: 1, message: "Terjadi kesalahan. Coba lagi");
    }
  }
}
