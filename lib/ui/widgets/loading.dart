import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Lottie.asset(
          'assets/json/Logo_Komerce_Loading_Page.json',
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ), // Menampilkan indikator loading
      ),
    );
  }
}
