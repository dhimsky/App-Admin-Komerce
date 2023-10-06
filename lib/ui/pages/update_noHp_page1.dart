import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class UpdateNoHp1 extends StatefulWidget {
  const UpdateNoHp1({super.key});

  @override
  State<UpdateNoHp1> createState() => _UpdateNoHp1State();
}

class _UpdateNoHp1State extends State<UpdateNoHp1> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Menghapus shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.black), // Ubah ikon dan warna
          onPressed: () {
            Navigator.pop(
                context); // Menggunakan Navigator.pop() untuk navigasi kembali
          },
        ),
        backgroundColor: Colors.white, // Ubah latar belakang
        title: Text(
          'Update No. Hp',
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
          height: 63 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/updatenohp2');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfff95031),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              padding: EdgeInsets.symmetric(vertical: 0 * fem),
            ),
            child: Center(
              child: Text(
                'Lanjutkan',
                style: TextStyle(
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff),
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
                                  'Silahkan isi email telah terdaftar',
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
