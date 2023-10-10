import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:komerce/models/update_noHp_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

Future<void> saveDataToSharedPreferences(Map<String, dynamic> data) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String jsonData = jsonEncode(data);
  await prefs.setString('user_data', jsonData);
}

Future<UpdateNoHp> fetchUserProfile(String email, String token) async {
  final apiUrl = 'http://192.168.1.101:9000/app/get-noHp';

  final response = await http.get(
    Uri.parse('$apiUrl?email=$email'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    },
  );
  print('Response dari API: ${response.body}');

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    print('$data');
    await saveDataToSharedPreferences(data);
    return UpdateNoHp.fromJson(data);
  } else {
    throw Exception('Gagal mengambil data profil dari API');
  }
}

Future<bool> updateNoHp(String newNoHp, String token) async {
  final apiUrl = 'http://192.168.1.101:9000/app/update-noHp';

  final Map<String, dynamic> requestBody = {
    'no_hp': newNoHp,
  };

  final body = jsonEncode(requestBody);

  final headers = {
    'Authorization': 'Bearer $token',
    'Content-Type': 'application/json; charset=UTF-8',
  };

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: body,
  );
  print('Response dari API: ${response.body}');

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
