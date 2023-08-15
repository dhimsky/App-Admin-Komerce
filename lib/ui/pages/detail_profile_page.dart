import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class DetailProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(CupertinoIcons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            label: 'Beranda'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(CupertinoIcons.list_bullet),
              onPressed: () {
                Navigator.pushNamed(context, '/detailprofile');
              },
            ),
            label: 'Log Aktivitas'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(CupertinoIcons.profile_circled),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            label: 'Profile'),
      ]),
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
                        24 * fem, 36 * fem, 24 * fem, 315 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 147 * fem, 28 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/profile');
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
                                // identitaskamuRSh (23:1971)
                                'Identitas Kamu',
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
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // field6Hw (23:1973)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 21 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Nama Lengkap',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10 * fem, 8 * fem, 10 * fem, 7 * fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff4f4f4),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                      ),
                                      child: Text(
                                        'Arief Feisal Basri',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 26 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 149 * fem, 0 * fem),
                                      child: Text(
                                        'Email',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'arieffeisal01@gmail.com',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 26 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 218 * fem, 0 * fem),
                                      child: Text(
                                        'Username',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'arieffsl',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 26 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 174 * fem, 0 * fem),
                                      child: Text(
                                        'No.HP',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        '+628763716123456',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 26 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 189 * fem, 0 * fem),
                                      child: Text(
                                        'Jenis Kelamin',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'Laki-laki',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Alamat',
                                        style: SafeGoogleFont(
                                          'Plus Jakarta Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26 * ffem / fem,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10 * fem, 8 * fem, 11 * fem, 8 * fem),
                                      width: double.infinity,
                                      height: 81 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff4f4f4),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                      ),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          child: Container(
                                            constraints: BoxConstraints(
                                              maxWidth: 306 * fem,
                                            ),
                                            child: Text(
                                              'Jln. Raya Tunjungmulih No.2, RT 02/03, Karangmoncol, Purbalingga, Jawa Tengah, Indonesia. 53333',
                                              style: SafeGoogleFont(
                                                'Plus Jakarta Sans',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.26 * ffem / fem,
                                                color: Color(0xff333333),
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
