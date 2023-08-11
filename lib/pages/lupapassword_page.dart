import 'package:flutter/material.dart';
import 'package:komerce/theme.dart';

class LupaPassword extends StatelessWidget {
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
                  EdgeInsets.fromLTRB(32 * fem, 120 * fem, 32 * fem, 120 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 157 * fem, 23.5 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 154 * fem,
                    ),
                    child: Text(
                      'Lupa\nPassword',
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
                        0 * fem, 0 * fem, 0 * fem, 50 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 31 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 290 * fem,
                          ),
                          child: Text(
                            'Tautan untuk mengatur ulang password akan dikirim melalui email.',
                            style: SafeGoogleFont(
                              'Plus Jakarta Sans',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.26 * ffem / fem,
                              color: Color(0xff4d4d4d),
                            ),
                          ),
                        ),
                        Container(
                          // component112y (10:3475)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 32 * fem),
                          width: double.infinity,
                          height: 48 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // frame2608601KZT (I10:3475;88:37296)
                                left: 0 * fem,
                                top: 8 * fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      12 * fem, 10 * fem, 12 * fem, 9 * fem),
                                  width: 311 * fem,
                                  height: 40 * fem,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffcccccc)),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
                                      hintText: 'email@gmail.com',
                                      hintStyle: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xffcccccc),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // frame26086647kD (I10:3475;90:34274)
                                left: 8 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 39 * fem,
                                  height: 16 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Email',
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
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Plus Jakarta Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                color: Color(0xfff95031),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Ingat password? ',
                                  style: SafeGoogleFont(
                                    'Plus Jakarta Sans',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Kembali Masuk',
                                  style: SafeGoogleFont(
                                    'Plus Jakarta Sans',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xfff95031),
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
                    width: double.infinity,
                    height: 40 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xfff95031),
                      borderRadius: BorderRadius.circular(5 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'KIrim',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Plus Jakarta Sans',
                          fontSize: 14 * ffem,
                          height: 1.26 * ffem / fem,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1000000015 * fem,
                          color: Color(0xffffffff),
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
    );
  }
}
