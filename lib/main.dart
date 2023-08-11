import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:komerce/pages/login.dart'; // Ganti dengan path yang sesuai

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(), // Menggunakan kelas Login yang sudah Anda sediakan
    );
  }
}
