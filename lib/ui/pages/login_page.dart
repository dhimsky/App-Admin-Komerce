import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

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
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(32 * fem, 120 * fem, 32 * fem, 120 * fem),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 31.5 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 215 * fem,
                      ),
                      child: Text(
                        'Login to\nyour Account',
                        style: TextStyle(
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
                                  child: Positioned(
                                    left: 0 * fem,
                                    top: 8 * fem,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(7 * fem),
                                        hintText: 'Masukan username kamu',
                                        hintStyle: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xffb3b3b3),
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Username tidak ditemukan';
                                        }
                                        return null;
                                      },
                                      onChanged: (value) {
                                        setState(() {
                                          _username = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                  child: TextFormField(
                                    obscureText: !_isPasswordVisible,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
                                      hintText: 'Password kamu',
                                      hintStyle: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xffb3b3b3),
                                      ),
                                      border: OutlineInputBorder(),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isPasswordVisible =
                                                !_isPasswordVisible;
                                          });
                                        },
                                        child: Container(
                                          width: 24 * fem,
                                          height: 24 * fem,
                                          child: Icon(
                                            _isPasswordVisible
                                                ? CupertinoIcons.eye_slash
                                                : CupertinoIcons.eye,
                                          ),
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Username atau password salah';
                                      }
                                      if (value.length < 8) {
                                        return 'Password minimal 8 karakter';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        _password = value;
                                      });
                                    },
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
                              'Forgot password?',
                              style: TextStyle(
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
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamed('/home');
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
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
