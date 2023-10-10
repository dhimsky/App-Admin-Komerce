import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginRepository {
  Future<http.Response> verifyemail(String email) {
    return http.post(Uri.parse("http://192.168.1.101:9000/app/send-verify-mail/"),
        headers: <String, String>{
          'Content-Type': "application/json; charset=UTF-8"
        },
        body: jsonEncode(
            <String, String>{'email': email, }));
  }
}
