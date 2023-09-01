import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class DetailOrder extends StatelessWidget {
  const DetailOrder({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                            12 * fem, 20 * fem, 16.71 * fem, 15 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  12 * fem, 0 * fem, 181.29 * fem, 23 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/cariorder');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 10 * fem, 1 * fem),
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Detail Order',
                                    style: SafeGoogleFont(
                                      'Plus Jakarta Sans',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.26 * ffem / fem,
                                      color: Color(0xff222222),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  12 * fem, 0 * fem, 7.29 * fem, 14 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  12 * fem, 11.5 * fem, 12 * fem, 11 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(8 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x28000000),
                                    offset: Offset(0 * fem, 0 * fem),
                                    blurRadius: 8 * fem,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 11.5 * fem),
                                    child: Text(
                                      'Data Partner',
                                      style: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.26 * ffem / fem,
                                        letterSpacing: 0.1000000015 * fem,
                                        color: Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 252 * fem,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 71 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    38 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Nama Partner',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Sholehudin',
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff333333),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7 * fem,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    84 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Email',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'sholehudin@gmail.com',
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff333333),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7 * fem,
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 21 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 16 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    25 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'No. Handphone',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0.03 * fem,
                                                    0 * fem),
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              4.03 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        '08737266461233',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              1 * fem),
                                                      width: 11.94 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/images/Whatsapp.png',
                                                        width: 11.94 * fem,
                                                        height: 12 * fem,
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
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  12 * fem, 0 * fem, 7.29 * fem, 16 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  8 * fem, 12 * fem, 8 * fem, 11.5 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffdff3ff),
                                borderRadius: BorderRadius.circular(8 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0.5 * fem, 159 * fem, 0 * fem),
                                    child: Text(
                                      'No. Resi',
                                      style: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0.5 * fem, 4 * fem, 0 * fem),
                                    child: Text(
                                      'KOMSHIP9982',
                                      textAlign: TextAlign.right,
                                      style: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0.5 * fem),
                                    width: 16 * fem,
                                    height: 16 * fem,
                                    child: Icon(
                                      Icons.file_copy_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  12 * fem, 0 * fem, 7.29 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  12 * fem, 11.5 * fem, 12 * fem, 11 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(8 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x28000000),
                                    offset: Offset(0 * fem, 0 * fem),
                                    blurRadius: 8 * fem,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 11.5 * fem),
                                    child: Text(
                                      'Rincian Order',
                                      style: SafeGoogleFont(
                                        'Plus Jakarta Sans',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.26 * ffem / fem,
                                        letterSpacing: 0.1000000015 * fem,
                                        color: Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 7 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    122 * fem,
                                                    7 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              68 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Pembeli',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Sasa Melati',
                                                      style: SafeGoogleFont(
                                                        'Plus Jakarta Sans',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.26 * ffem / fem,
                                                        color:
                                                            Color(0xff333333),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    94 * fem,
                                                    7 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              42 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Waktu Order',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '11 Oktober 2023',
                                                      style: SafeGoogleFont(
                                                        'Plus Jakarta Sans',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.26 * ffem / fem,
                                                        color:
                                                            Color(0xff333333),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    100 * fem,
                                                    7 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              58 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'No. Order',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'RX1234567890',
                                                      style: SafeGoogleFont(
                                                        'Plus Jakarta Sans',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.26 * ffem / fem,
                                                        color:
                                                            Color(0xff333333),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    35 * fem,
                                                    5 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              37 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Alamat Tujuan',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 153 * fem,
                                                      ),
                                                      child: Text(
                                                        'Sukamaju RT01/RW02,  Tamansari, Karangmoncol, Purbalingga, 556474',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    163 * fem,
                                                    6 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              2 * fem,
                                                              51 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Pengiriman',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 25 * fem,
                                                      height: 25 * fem,
                                                      child: Image.asset(
                                                        'assets/images/id-express.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    159 * fem,
                                                    7 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              51 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Pengiriman',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'COD',
                                                      style: SafeGoogleFont(
                                                        'Plus Jakarta Sans',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.26 * ffem / fem,
                                                        color:
                                                            Color(0xff333333),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    151 * fem,
                                                    0 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              54 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Berat Total',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff333333),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '800gr',
                                                      style: SafeGoogleFont(
                                                        'Plus Jakarta Sans',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.26 * ffem / fem,
                                                        color:
                                                            Color(0xff333333),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 7 * fem),
                                          width: double.infinity,
                                          height: 1 * fem,
                                          decoration: BoxDecoration(
                                            color: Color(0xffe2e2e2),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 7 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    126 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Total Harga Barang',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Rp980.000',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff333333),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 7 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    203 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Ongkir',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Rp24.000',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff333333),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 7 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    141 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Potongan Harga',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '-Rp20.000',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xffe31a1a),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 7 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    185 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Biaya Lain',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Rp20.000',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff333333),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    95 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Total Pembayaran',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.26 * ffem / fem,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Rp1.004.000',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: 16 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff34a770),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        padding: EdgeInsets.fromLTRB(
                            24 * fem, 23.5 * fem, 24 * fem, 23.5 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(0xffc2c2c2)),
                          ),
                        ),
                        child: Text(
                          'Rincian Pesanan',
                          style: SafeGoogleFont(
                            'Plus Jakarta Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.26 * ffem / fem,
                            letterSpacing: 0.1000000015 * fem,
                            color: Color(0xff222222),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 580 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 24 * fem,
                              top: 0 * fem,
                              child: Container(
                                width: 327 * fem,
                                height: 469 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(16 * fem,
                                          16 * fem, 16 * fem, 16 * fem),
                                      width: double.infinity,
                                      height: 143 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x28000000),
                                            offset: Offset(0 * fem, 0 * fem),
                                            blurRadius: 8 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 104 * fem, 7 * fem),
                                            width: double.infinity,
                                            height: 67 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      12 * fem,
                                                      0 * fem),
                                                  width: 66 * fem,
                                                  height: 66 * fem,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8 * fem),
                                                    color: Color(0xffd9d9d9),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        'assets/images/jilbab.png',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Jilbab Pasmina',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 7 * fem,
                                                      ),
                                                      Text(
                                                        'Hijau - M',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 7 * fem,
                                                      ),
                                                      Text(
                                                        '1 x Rp120.000',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem),
                                                  child: Text(
                                                    'Total Harga',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff818181),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Rp240.000',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 14 * ffem,
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
                                    SizedBox(
                                      height: 20 * fem,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(16 * fem,
                                          16 * fem, 16 * fem, 16 * fem),
                                      width: double.infinity,
                                      height: 143 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x28000000),
                                            offset: Offset(0 * fem, 0 * fem),
                                            blurRadius: 8 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 104 * fem, 7 * fem),
                                            width: double.infinity,
                                            height: 67 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      12 * fem,
                                                      0 * fem),
                                                  width: 66 * fem,
                                                  height: 66 * fem,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8 * fem),
                                                    color: Color(0xffd9d9d9),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        'assets/images/jilbab.png',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Jilbab Pasmina',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 7 * fem,
                                                      ),
                                                      Text(
                                                        'Hijau - M',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 7 * fem,
                                                      ),
                                                      Text(
                                                        '1 x Rp120.000',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem),
                                                  child: Text(
                                                    'Total Harga',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff818181),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Rp240.000',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 14 * ffem,
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
                                    SizedBox(
                                      height: 20 * fem,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(16 * fem,
                                          16 * fem, 16 * fem, 16 * fem),
                                      width: double.infinity,
                                      height: 143 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x28000000),
                                            offset: Offset(0 * fem, 0 * fem),
                                            blurRadius: 8 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 104 * fem, 7 * fem),
                                            width: double.infinity,
                                            height: 67 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      12 * fem,
                                                      0 * fem),
                                                  width: 66 * fem,
                                                  height: 66 * fem,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8 * fem),
                                                    color: Color(0xffd9d9d9),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        'assets/images/jilbab.png',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Jilbab Pasmina',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 7 * fem,
                                                      ),
                                                      Text(
                                                        'Hijau - M',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 7 * fem,
                                                      ),
                                                      Text(
                                                        '1 x Rp120.000',
                                                        style: SafeGoogleFont(
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.26 * ffem / fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem),
                                                  child: Text(
                                                    'Total Harga',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff818181),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Rp240.000',
                                                  style: SafeGoogleFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: 14 * ffem,
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
              ),
            ),
            Positioned(
              left: 0 * fem,
              bottom:
                  0, // Adjust this value to control the distance from the bottom
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(24 * fem, 12 * fem, 24 * fem, 24 * fem),
                width: 375 * fem,
                height: 86 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33000000),
                      offset: Offset(0 * fem,
                          4 * fem), // Adjust the offset to control the shadow
                      blurRadius: 7 * fem,
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
                        width: 50 * fem,
                        height: 50 * fem,
                        child: Image.asset(
                          'assets/images/More-Button.png',
                          width: 50 * fem,
                          height: 50 * fem,
                        ),
                      ),
                      Container(
                        width: 269 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfff94f31),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Check Update',
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
