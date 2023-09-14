import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:komerce/ui/widgets/custom_buttom_navigation_item.dart';

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
                              12 * fem, 30 * fem, 0 * fem, 0 * fem),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailprofile');
                          },
                          child: Container(
                            width: 16 * fem,
                            height: 16 * fem,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 245, 75, 32),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ubahpassword');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 16 * fem, 24 * fem, 47 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 230 * fem),
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
                                    child: Icon(
                                      Icons.key,
                                      color: Color.fromARGB(255, 245, 75, 32),
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
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 245, 75, 32),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Container(
                                      width: 247,
                                      height: 187,
                                      padding: const EdgeInsets.all(24),
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 58.80,
                                                  height: 55.20,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 22.08,
                                                        child: Container(
                                                          width: 32.90,
                                                          height: 33.12,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Color(
                                                                0xFFFBA63C),
                                                            shape: OvalBorder(),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 2.80,
                                                        top: 0,
                                                        child: Container(
                                                          width: 56,
                                                          height: 55.20,
                                                          decoration:
                                                              ShapeDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              begin: Alignment(
                                                                  0.71, 0.70),
                                                              end: Alignment(
                                                                  -0.71, -0.7),
                                                              colors: [
                                                                Color(
                                                                    0xFFFF9B1F),
                                                                Color(
                                                                    0xFFFFD49F)
                                                              ],
                                                            ),
                                                            shape: OvalBorder(
                                                              side: BorderSide(
                                                                  width: 0.76,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 42.70,
                                                        top: 3.45,
                                                        child: Container(
                                                          width: 13.71,
                                                          height: 13.80,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Color(
                                                                0xFFFBA63C),
                                                            shape: OvalBorder(),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 16.99,
                                                        top: 13.85,
                                                        child: Container(
                                                          width: 27.77,
                                                          height: 27.37,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              image: NetworkImage(
                                                                  "https://via.placeholder.com/28x27"),
                                                              fit: BoxFit.fill,
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
                                          SizedBox(
                                            height: 12,
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              'Anda yakin ingin keluar dari akun anda ?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 12,
                                                fontFamily: 'Plus Jakarta Sans',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 25,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: double.infinity,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 12,
                                                        vertical: 4),
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xFF999999)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Tidak',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF999999),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: double.infinity,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 12,
                                                        vertical: 4),
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFFF94F31),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Iya',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
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
                                      child: Icon(
                                        Icons.logout_outlined,
                                        color: Color.fromARGB(255, 245, 75, 32),
                                      ),
                                    ),
                                  ],
                                ),
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
