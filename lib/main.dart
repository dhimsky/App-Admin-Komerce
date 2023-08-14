import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:komerce/pages/dashboard_page.dart';
import 'package:komerce/pages/splash_page.dart';
import 'package:komerce/pages/login_page.dart';
import 'package:komerce/pages/lupapassword_page.dart';
import 'package:komerce/pages/profile_page.dart';
import 'package:komerce/pages/detailprofile_page.dart';

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
<<<<<<< Updated upstream
      initialRoute: '/dashboard',
=======
      initialRoute: '/profile',
>>>>>>> Stashed changes
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => Login(),
        '/lupapassword': (context) => LupaPassword(),
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => Profile(),
        '/detailprofile': (context) => DetailProfile(),
      },
    );
  }
}
