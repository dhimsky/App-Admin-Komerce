import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:komerce/cubit/page_cubit.dart';
import 'package:komerce/ui/pages/cari_order_page.dart';  // Hapus impor ini jika tidak diperlukan
import 'package:komerce/ui/pages/detail_order_page.dart';
import 'package:komerce/ui/pages/resend_verifikasi_page.dart';
import 'package:komerce/ui/pages/splash_page.dart';
import 'package:komerce/ui/pages/login_page.dart';
import 'package:komerce/ui/pages/lupa_password_page.dart';
import 'package:komerce/ui/pages/profile_page.dart';
import 'package:komerce/ui/pages/detail_profile_page.dart';
import 'package:komerce/ui/pages/home_page.dart';
import 'package:komerce/ui/pages/ubah_password_page.dart';
import 'package:komerce/ui/pages/landing_page.dart';
import 'dart:io';

import 'package:komerce/ui/pages/update_noHp_page1.dart';
import 'package:komerce/ui/pages/update_noHp_page2.dart';
import 'package:provider/provider.dart';


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => MyModel2(),
        ),
        ChangeNotifierProvider(
          create: (context) => MyModel3(),
        ),
        ChangeNotifierProvider(
          create: (context) => MyModel4(),
        ),
        ChangeNotifierProvider(
          create: (context) => MyModel5(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PageCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'PlusJakartaSans'),
          home: SplashPage(),
          initialRoute: '/splash',
          routes: {
            '/landing': (context) => LandingPage(),
            '/splash': (context) => SplashPage(),
            '/login': (context) => Login(),
            '/lupapassword': (context) => LupaPassword(),
            '/profile': (context) => Profile(),
            '/detailprofile': (context) => DetailProfile(),
            '/home': (context) => HomePage(),
            '/ubahpassword': (context) => ChangePasswordPage(),
            '/cariorder': (context) => CariOrder(),
            '/detailorder': (context) => DetailOrder(
              orderNumber: '',
            ),
            '/updatenohp1': (context) => UpdateNoHp1(),
            '/updatenohp2': (context) => UpdateNoHp2(),
            '/resendverifikasi': (context) => ResendVerifikasi(),
          },
        ),
      ),
    );
  }
}

