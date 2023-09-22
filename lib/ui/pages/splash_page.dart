import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      checkAuthentication();
    });
  }

  // Fungsi untuk memeriksa otentikasi
  Future<void> checkAuthentication() async {
    final prefs = await SharedPreferences.getInstance();
    final savedToken = prefs.getString('token');

    if (savedToken != null && savedToken.isNotEmpty) {
      // Jika token tersimpan (tidak null dan tidak kosong), Anda bisa menganggap pengguna sudah login.
      // Anda juga harus memeriksa validitas token dengan mengirimkannya ke server jika perlu.
      // Jika token valid, alihkan ke halaman beranda. Jika tidak valid, alihkan ke halaman login.
      // Contoh:
      // if (await validateTokenWithServer(savedToken)) {
      //   Navigator.pushReplacementNamed(context, '/home');
      // } else {
      //   Navigator.pushReplacementNamed(context, '/login');
      // }
      Navigator.pushReplacementNamed(context, '/landing');
    } else {
      // Jika token belum tersimpan, alihkan ke halaman login.
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 182,
                  height: 67.69,
                ),
                Text(
                  'my.komerce.id',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB3B3B3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
