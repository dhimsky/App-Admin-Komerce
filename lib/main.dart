import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:komerce/ui/pages/cari_order_page.dart';
import 'package:komerce/ui/pages/detail_order_page.dart';
import 'package:komerce/ui/pages/splash_page.dart';
import 'package:komerce/ui/pages/login_page.dart';
import 'package:komerce/ui/pages/lupa_password_page.dart';
import 'package:komerce/ui/pages/profile_page.dart';
import 'package:komerce/ui/pages/detail_profile_page.dart';
import 'package:komerce/ui/pages/home_page.dart';
import 'package:komerce/ui/pages/ubah_password_page.dart';
import 'package:komerce/ui/pages/detail.dart';

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
      home: SplashPage(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => Login(),
        '/lupapassword': (context) => LupaPassword(),
        '/profile': (context) => Profile(),
        '/detailprofile': (context) => DetailProfile(),
        '/home': (context) => HomePage(),
        '/ubahpassword': (context) => UbahPassword(),
        '/cariorder': (context) => CariOrder(),
        '/detailorder': (context) => DetailOrder(),
        '/detail': (context) => Detail(),
      },
    );
  }
}
