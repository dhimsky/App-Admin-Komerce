import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:komerce/ui/pages/splash_page.dart';
import 'package:komerce/ui/pages/login_page.dart';
import 'package:komerce/ui/pages/lupapassword_page.dart';
import 'package:komerce/ui/pages/profile_page.dart';
import 'package:komerce/ui/pages/detailprofile_page.dart';
import 'package:komerce/ui/pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PlusJakartaSans'),
      home: Login(),
      initialRoute: '/home',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => Login(),
        '/lupapassword': (context) => LupaPassword(),
        '/profile': (context) => Profile(),
        '/detailprofile': (context) => DetailProfile(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
