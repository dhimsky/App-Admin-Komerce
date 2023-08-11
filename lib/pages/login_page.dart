import 'package:flutter/material.dart';
import 'package:komerce/theme.dart';

class Login extends StatelessWidget {
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
              padding:
                  EdgeInsets.fromLTRB(32 * fem, 130 * fem, 32 * fem, 130 * fem),
              width: double.infinity,
              height: 837 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 31.5 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 215 * fem,
                      ),
                      child: Text(
                        'Login to\nyour Account ',
                        style: SafeGoogleFont(
                          'Plus Jakarta Sans',
                          fontSize: 32 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.26 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 31 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                  width: double.infinity,
                                  height: 48 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0 * fem,
                                        top: 8 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(12 * fem,
                                              10 * fem, 12 * fem, 9 * fem),
                                          width: 311 * fem,
                                          height: 40 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffcccccc)),
                                            color: Color(0xffffffff),
                                            borderRadius:
                                                BorderRadius.circular(8 * fem),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(7 * fem),
                                              hintText: 'Masukan username kamu',
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
                                      ),
                                      Positioned(
                                        left: 8 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          width: 66 * fem,
                                          height: 16 * fem,
                                          decoration: BoxDecoration(
                                            color: Color(0xffffffff),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Username',
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
                                        left: 0 * fem,
                                        top: 8 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(12 * fem,
                                              10 * fem, 12 * fem, 10 * fem),
                                          width: 311 * fem,
                                          height: 44 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffcccccc)),
                                            color: Color(0xffffffff),
                                            borderRadius:
                                                BorderRadius.circular(8 * fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: TextField(
                                                  obscureText: true,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.all(7 * fem),
                                                    hintText: 'Password kamu',
                                                    hintStyle: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                child: Image.asset(
                                                  'assets/images/eye-slash.png',
                                                  width: 24 * fem,
                                                  height: 24 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          width: 64 * fem,
                                          height: 16 * fem,
                                          decoration: BoxDecoration(
                                            color: Color(0xffffffff),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Password',
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/lupapassword');
                            },
                            child: Text(
                              'Lupa password?',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Plus Jakarta Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff818181),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/dashboard');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xfff95031),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Plus Jakarta Sans',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.26 * ffem / fem,
                                letterSpacing: 0.1000000015 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
