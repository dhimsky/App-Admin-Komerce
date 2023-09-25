import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class UbahPassword extends StatefulWidget {
  @override
  _UbahPassword createState() => _UbahPassword();
}

class _UbahPassword extends State<UbahPassword> {
  @override
  bool showPassword = false;
  bool showPassword2 = false;
  bool showPassword3 = false;
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
                                  Navigator.of(context)
                                      .pushReplacementNamed('/landing');
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
                                    obscureText:
                                        !showPassword, // Toggle password visibility
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
                                      hintText: '',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
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
                                  child: InkWell(
                                    onTap: () {
                                      // Toggle password visibility when the button is pressed
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        showPassword
                                            ? CupertinoIcons.eye
                                            : CupertinoIcons.eye_slash,
                                      ),
                                    ),
                                  ),
                                ),
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
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
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
                                    obscureText: !showPassword2,
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
                                  child: InkWell(
                                    onTap: () {
                                      // Toggle password visibility when the button is pressed
                                      setState(() {
                                        showPassword2 = !showPassword2;
                                      });
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        showPassword2
                                            ? CupertinoIcons.eye
                                            : CupertinoIcons.eye_slash,
                                      ),
                                    ),
                                  ),
                                ),
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
                                    obscureText: !showPassword3,
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
                                  child: InkWell(
                                    onTap: () {
                                      // Toggle password visibility when the button is pressed
                                      setState(() {
                                        showPassword3 = !showPassword3;
                                      });
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        showPassword3
                                            ? CupertinoIcons.eye
                                            : CupertinoIcons.eye_slash,
                                      ),
                                    ),
                                  ),
                                ),
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
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              width: 247 * fem,
                              height: 155 *
                                  fem, // Menambahkan tinggi agar dialog lebih proporsional
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(8 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 14.4 * fem),
                                    width: 58.8 * fem,
                                    height: 55.2 * fem,
                                    child: Image.asset(
                                      'assets/images/alert-icon.png',
                                      width: 58.8 * fem,
                                      height: 55.2 * fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem,
                                        0 * fem,
                                        0 * fem,
                                        10 * fem), // Memberi margin ke teks
                                    constraints: BoxConstraints(
                                      maxWidth: 197 * fem,
                                    ),
                                    child: Text(
                                      'Anda yakin ingin mengubah password ?',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1 * ffem / fem,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          width: 97.50,
                                          height: 25,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 4,
                                          ),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF999999),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Tidak',
                                                style: TextStyle(
                                                  color: Color(0xFF999999),
                                                  fontSize: 12,
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            4, // Jarak antara tombol "Tidak" dan "Iya"
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('/landing');
                                        },
                                        child: Container(
                                          width: 97.50,
                                          height: 25,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 4,
                                          ),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF94F31),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Iya',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
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
