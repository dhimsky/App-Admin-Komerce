import 'package:flutter/material.dart';
import 'package:komerce/theme.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        12 * fem, 4 * fem, 16.71 * fem, 23 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Profile',
                            style: SafeGoogleFont(
                              'Plus Jakarta Sans',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.26 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 12 * fem, 24 * fem, 12 * fem),
                    width: double.infinity,
                    height: 96 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 101 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                width: 72 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff95031),
                                  borderRadius: BorderRadius.circular(36 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'A',
                                    style: SafeGoogleFont(
                                      'Plus Jakarta Sans',
                                      fontSize: 38.4000015259 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 14.5 * fem, 0 * fem, 13.5 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      child: Text(
                                        'Arief Feisal Basri',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'UI/UX Designer',
                                      style: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 16 * fem,
                          height: 16 * fem,
                          child: Image.asset(
                            'assets/images/arrow-right.png',
                            width: 16 * fem,
                            height: 16 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 16 * fem, 24 * fem, 47 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 417 * fem),
                          padding: EdgeInsets.fromLTRB(
                              12 * fem, 12 * fem, 12 * fem, 12 * fem),
                          width: double.infinity,
                          height: 48 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                offset: Offset(0 * fem, 0 * fem),
                                blurRadius: 10.5 * fem,
                              ),
                            ],
                          ),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                  width: 24 * fem,
                                  height: 24 * fem,
                                  child: Image.asset(
                                    'assets/images/security-save.png',
                                    width: 24 * fem,
                                    height: 24 * fem,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 4 * fem, 0 * fem, 3.5 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0.5 * fem, 169 * fem, 0 * fem),
                                        child: Text(
                                          'Ubah Password',
                                          style: SafeGoogleFont(
                                            'Plus Jakarta Sans',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.26 * ffem / fem,
                                            letterSpacing: -0.25 * fem,
                                            color: Color(0xff818181),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 0.5 * fem),
                                        width: 16 * fem,
                                        height: 16 * fem,
                                        child: Image.asset(
                                          'assets/images/arrow-right-7GD.png',
                                          width: 16 * fem,
                                          height: 16 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 14 * fem, 24 * fem, 14 * fem),
                          width: double.infinity,
                          height: 52 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                offset: Offset(0 * fem, 0 * fem),
                                blurRadius: 10.5 * fem,
                              ),
                            ],
                          ),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 167 * fem, 0 * fem),
                                  child: Text(
                                    'Keluar Akun',
                                    style: SafeGoogleFont(
                                      'Plus Jakarta Sans',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.26 * ffem / fem,
                                      letterSpacing: -0.25 * fem,
                                      color: Color(0xffe31a1a),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 24 * fem,
                                  height: 24 * fem,
                                  child: Image.asset(
                                    'assets/images/logout.png',
                                    width: 24 * fem,
                                    height: 24 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        42 * fem, 12 * fem, 40 * fem, 23 * fem),
                    width: double.infinity,
                    height: 77 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(0 * fem, -6 * fem),
                          blurRadius: 11 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 80 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Image.asset(
                                  'assets/images/komerce-home-TDT.png',
                                  width: 24 * fem,
                                  height: 24 * fem,
                                ),
                              ),
                              Text(
                                'Beranda',
                                style: SafeGoogleFont(
                                  'Plus Jakarta Sans',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.26 * ffem / fem,
                                  color: Color(0xff818181),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 78 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Image.asset(
                                  'assets/images/gps.png',
                                  width: 24 * fem,
                                  height: 24 * fem,
                                ),
                              ),
                              Text(
                                'Cek Resi',
                                style: SafeGoogleFont(
                                  'Plus Jakarta Sans',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.26 * ffem / fem,
                                  color: Color(0xff818181),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Image.asset(
                                  'assets/images/komerce-profile-circle-qbf.png',
                                  width: 24 * fem,
                                  height: 24 * fem,
                                ),
                              ),
                              Text(
                                'Profile',
                                style: SafeGoogleFont(
                                  'Plus Jakarta Sans',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.26 * ffem / fem,
                                  color: Color(0xfff95031),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
