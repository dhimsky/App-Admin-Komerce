import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:komerce/cubit/page_cubit.dart';
import 'package:komerce/ui/pages/cari_order_page.dart';
import 'package:komerce/ui/pages/detail_order_page.dart';
import 'package:komerce/ui/pages/splash_page.dart';
import 'package:komerce/ui/pages/login_page.dart';
import 'package:komerce/ui/pages/lupa_password_page.dart';
import 'package:komerce/ui/pages/profile_page.dart';
import 'package:komerce/ui/pages/detail_profile_page.dart';
import 'package:komerce/ui/pages/home_page.dart';
import 'package:komerce/ui/pages/ubah_password_page.dart';
import 'package:komerce/ui/pages/landing_page.dart';
import 'package:komerce/ui/pages/testing.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'PlusJakartaSans'),
        home: SearchPage(),
        initialRoute: '/testing',
        routes: {
          '/testing': (context) => SearchPage(),
          '/landing': (context) => LandingPage(),
          '/splash': (context) => SplashPage(),
          '/login': (context) => Login(),
          '/lupapassword': (context) => LupaPassword(),
          '/profile': (context) => Profile(),
          '/detailprofile': (context) => DetailProfile(),
          '/home': (context) => HomePage(),
          '/ubahpassword': (context) => UbahPassword(),
          '/cariorder': (context) => CariOrder(),
          '/detailorder': (context) => DetailOrder(),
        },
      ),
    );
  }
}
