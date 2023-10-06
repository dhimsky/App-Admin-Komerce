import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../shared/theme.dart';

class ResendVerifikasi extends StatefulWidget {
  const ResendVerifikasi({super.key});

  @override
  State<ResendVerifikasi> createState() => _ResendVerifikasiState();
}

class _ResendVerifikasiState extends State<ResendVerifikasi> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Menghapus shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: Colors.black), // Ubah ikon dan warna
          onPressed: () {
            Navigator.pop(
                context); // Menggunakan Navigator.pop() untuk navigasi kembali
          },
        ),
        backgroundColor: Colors.white, // Ubah latar belakang
        title: Text(
          'Kirim Ulang Verifikasi',
          style: TextStyle(
            color: Colors.black, // Ubah warna teks
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Ubah latar belakang
        elevation: 0, // Menghapus shadow
        child: Container(
          padding: EdgeInsets.fromLTRB(24 * fem, 12 * fem, 24 * fem, 12 * fem),
          width: double.infinity,
          height: 70 * fem,
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 15 * fem, 24 * fem, 32 * fem),
                    width: 375 * fem,
                    height: 523 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30 * fem),
                        topRight: Radius.circular(30 * fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              135.5 * fem, 0 * fem, 135.5 * fem, 32 * fem),
                          width: double.infinity,
                          height: 6 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3 * fem),
                            color: Color(0xffc2c2c2),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    42.5 * fem, 0 * fem, 42.5 * fem, 28 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                      width: 210 * fem,
                                      height: 229 * fem,
                                      child: Image.asset(
                                        'assets/images/konfirmasinohp.png',
                                        width: 210 * fem,
                                        height: 229 * fem,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 7 * fem),
                                            child: Text(
                                              'Kirim Ulang Verifikasi',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Plus Jakarta Sans',
                                                fontSize: 20 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.26 * ffem / fem,
                                                color: Color(0xff333333),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Email arieff******01@gmail.com akan\ndikirimkan verifikasi ulang.',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Plus Jakarta Sans',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.26 * ffem / fem,
                                              color: Color(0xff818181),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 12 * fem),
                                        padding: EdgeInsets.fromLTRB(114 * fem,
                                            8 * fem, 130 * fem, 8 * fem),
                                        width: double.infinity,
                                        height: 40 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xfff95031)),
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(8 * fem),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              19.5 * fem,
                                              1.5 * fem,
                                              0 * fem,
                                              1.5 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Text(
                                            'Kembali',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xfff95031),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/landing');
                                        bool updateSuccessful = true;
                                        if (updateSuccessful) {
                                          Fluttertoast.showToast(
                                            msg:
                                                'Verifikasi Ulang Telah Terkirim',
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Color(0x99c2c2c2),
                                            textColor: Color(0xff333333),
                                            fontSize: 16 * ffem,
                                          );
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(
                                            143.5 * fem,
                                            8 * fem,
                                            140 * fem,
                                            8 * fem),
                                        width: double.infinity,
                                        height: 40 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xfff95031)),
                                          color: Color(0xfff95031),
                                          borderRadius:
                                              BorderRadius.circular(8 * fem),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Center(
                                            child: Text(
                                              'Yakin',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5 * ffem / fem,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfff95031),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              padding: EdgeInsets.symmetric(vertical: 0 * fem),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: Text(
                  'Kirim Ulang Verifikasi',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
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
                        24 * fem, 37 * fem, 24 * fem, 188.31 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              39 * fem, 0 * fem, 39 * fem, 52 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 11 * fem),
                                child: Text(
                                  'Masukkan Email',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Plus Jakarta Sans',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 249 * fem,
                                ),
                                child: Text(
                                  'Silahkan isi email yang ingin dikirimkan\nverifikasi ulang',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Plus Jakarta Sans',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xff818181),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              1.28 * fem, 0 * fem, 0 * fem, 30 * fem),
                          width: 236.28 * fem,
                          height: 217.69 * fem,
                          child: Image.asset(
                            'assets/images/emailverif.png',
                            width: 236.28 * fem,
                            height: 217.69 * fem,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 48 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                10 * fem, 16.5 * fem, 10 * fem, 15.5 * fem),
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffc2c2c2)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(9 * fem),
                                hintText: 'arieff****1@gmail.com',
                                hintStyle: SafeGoogleFont(
                                  'Plus Jakarta Sans',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.26 * ffem / fem,
                                  color: Color(0xffc2c2c2),
                                ),
                                border: InputBorder.none,
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
          ),
        ),
      ),
    );
  }
}
