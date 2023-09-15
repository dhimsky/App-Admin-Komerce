import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class UbahPassword extends StatelessWidget {
  const UbahPassword({super.key});

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
                        24 * fem, 36 * fem, 0 * fem, 20 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 147 * fem, 27 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/landing');
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 1 * fem),
                                  width: 24 * fem,
                                  height: 24 * fem,
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color.fromARGB(255, 245, 75, 32),
                                  ),
                                ),
                              ),
                              Text(
                                'Ubah Password',
                                style: SafeGoogleFont(
                                  'Plus Jakarta Sans',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.26 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 52 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 32 * fem,
                          top: 8 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 10 * fem, 12 * fem, 10 * fem),
                            width: 311 * fem,
                            height: 44 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffcccccc)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
                                      hintText: '',
                                      hintStyle: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xffb3b3b3),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 24 * fem,
                                    height: 24 * fem,
                                    child: Icon(
                                      CupertinoIcons.eye_slash,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 44 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 90 * fem,
                            height: 16 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Text(
                              'Password Lama',
                              style: SafeGoogleFont(
                                'Plus Jakarta Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff1a1a1a),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 32 * fem,
                          top: 8 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 10 * fem, 12 * fem, 10 * fem),
                            width: 311 * fem,
                            height: 44 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffcccccc)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
                                      hintText: '',
                                      hintStyle: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xffb3b3b3),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 24 * fem,
                                    height: 24 * fem,
                                    child: Icon(
                                      CupertinoIcons.eye_slash,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 44 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 90 * fem,
                            height: 16 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Text(
                              'Password Baru',
                              style: SafeGoogleFont(
                                'Plus Jakarta Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff1a1a1a),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 32 * fem,
                          top: 8 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 10 * fem, 12 * fem, 10 * fem),
                            width: 311 * fem,
                            height: 44 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffcccccc)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
                                      hintText: '',
                                      hintStyle: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xffb3b3b3),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 24 * fem,
                                    height: 24 * fem,
                                    child: Icon(
                                      CupertinoIcons.eye_slash,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 44 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 145 * fem,
                            height: 16 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Text(
                              'Konfirmasi Password Baru',
                              style: SafeGoogleFont(
                                'Plus Jakarta Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff1a1a1a),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/landing');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 52 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32 * fem,
                            top: 8 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  12 * fem, 10 * fem, 12 * fem, 10 * fem),
                              width: 311 * fem,
                              height: 44 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffcccccc)),
                                color: orangeColor,
                                borderRadius: BorderRadius.circular(8 * fem),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Simpan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
