import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:komerce/model/my_response.dart';
import 'package:komerce/module/login/login_controller.dart';

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

  LoginController _controller = LoginController();

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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Username',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(height: 0),
                                      TextFormField(
                                        controller: _controller.emailController,
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
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                          ),
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
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(height: 0),
                                      TextFormField(
                                        controller:
                                            _controller.passwordController,
                                        obscureText: !_isPasswordVisible,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.all(7 * fem),
                                          hintText: 'Password kamu',
                                          hintStyle: SafeGoogleFont(
                                            'Plus Jakarta Sans',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.26 * ffem / fem,
                                            color: Color(0xffb3b3b3),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10 * fem)),
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
                                                    ? CupertinoIcons.eye
                                                    : CupertinoIcons.eye_slash,
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
                                          if (value.contains(' ')) {
                                            return 'Password tidak dapat menggunakan spasi';
                                          }
                                          return null;
                                        },
                                        onChanged: (value) {
                                          setState(() {
                                            _password = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                )
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
                    (_controller.isLoading)
                        ? Center(
                            child: SizedBox(
                              height: 32,
                              width: 32,
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                                strokeWidth: 3,
                              ),
                            ),
                          )
                        : ElevatedButton(
                            onPressed: _login,
                            // () {
                            //   if (_formKey.currentState!.validate()) {
                            //     Navigator.of(context).pushNamed('/landing');
                            //   }
                            // },
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

  void _login() async {
    setState(() {
      _controller.isLoading = true;
    });

    MyResponse response = await _controller.login();

    setState(() {
      _controller.isLoading = false;
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(response.message)));
    if (response.status == 200) {
      Navigator.of(context).pushNamed('/landing');
    } else {
      //gagal login
    }
  }
}
