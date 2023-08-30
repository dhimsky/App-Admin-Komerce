import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class Detail extends StatelessWidget {
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
              // detailorderxe5 (62:1796)
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdnau4x1 (TQTjwdATbQzZYigJLADNau)
                    padding: EdgeInsets.fromLTRB(
                        12 * fem, 4 * fem, 16.71 * fem, 15 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // titlepage6nD (62:1817)
                          margin: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 181.29 * fem, 23 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // arrowrightENd (62:1818)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 10 * fem, 1 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 24 * fem,
                                  height: 24 * fem,
                                ),
                              ),
                              Text(
                                // detailorderwnq (62:1819)
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
                          // datapartnerreu (62:1821)
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
                                // datapartnergtq (62:1822)
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
                                // detaildataBah (62:1823)
                                width: 252 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // row1jMK (62:1824)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 71 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // namapartner4Pb (62:1825)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 38 * fem, 0 * fem),
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
                                            // sholehudinjkd (62:1826)
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
                                      // row24H7 (62:1827)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // emailcZX (62:1828)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 84 * fem, 0 * fem),
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
                                            // sholehudingmailcomiMf (62:1829)
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
                                      // row3DZK (62:1830)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 21 * fem, 0 * fem),
                                      width: double.infinity,
                                      height: 16 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // nohandphonek3T (62:1831)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 25 * fem, 0 * fem),
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
                                            // contact449 (62:1832)
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
                                                  // P6R (62:1833)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // whatsapptJ5 (62:1834)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      1 * fem),
                                                  width: 11.94 * fem,
                                                  height: 12 * fem,
                                                  child: Image.asset(
                                                    'assets/images/logo.png',
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
                          // row1bCV (62:1836)
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
                                // noresiH5K (62:1837)
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
                                // komship9982aq7 (62:1838)
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
                                // documenttext62m (62:1839)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0.5 * fem),
                                width: 16 * fem,
                                height: 16 * fem,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 16 * fem,
                                  height: 16 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // datapartnerBa1 (62:1841)
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
                                // rincianorderzA5 (62:1842)
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
                                // detaildatarxy (62:1843)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupvd7foNR (TQTkrbeC5GGiuHsoUDVD7f)
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // row1WXj (62:1844)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 122 * fem, 7 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // pembelir5o (62:1845)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // sasamelatixPj (62:1846)
                                                  'Sasa Melati',
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
                                            // row2hMK (62:1847)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 94 * fem, 7 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // waktuorderSJu (62:1848)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // oktober2023Mgm (62:1849)
                                                  '11 Oktober 2023',
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
                                            // row3HaR (62:1850)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 100 * fem, 7 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // noorderDys (62:1851)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // rx12345678909cd (62:1852)
                                                  'RX1234567890',
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
                                            // row3VRb (62:1853)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 35 * fem, 5 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // alamattujuan2Ad (62:1854)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // sukamajurt01rw02tamansarikaran (62:1855)
                                                  constraints: BoxConstraints(
                                                    maxWidth: 153 * fem,
                                                  ),
                                                  child: Text(
                                                    'Sukamaju RT01/RW02,  Tamansari, Karangmoncol, Purbalingga, 556474',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // row3QS5 (62:1856)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 163 * fem, 6 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // pengiriman98m (62:1857)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // image2SNm (62:1859)
                                                  width: 25 * fem,
                                                  height: 25 * fem,
                                                  child: Image.asset(
                                                    'assets/images/logo.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // row3AZf (62:1860)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 159 * fem, 7 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // pengirimanJA5 (62:1861)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // codQU1 (62:1862)
                                                  'COD',
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
                                            // row3k25 (62:1863)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 151 * fem, 0 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // berattotalgRX (62:1864)
                                                  margin: EdgeInsets.fromLTRB(
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
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // grzh7 (62:1865)
                                                  '800gr',
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
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line1Xww (62:1866)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      height: 1 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xffe2e2e2),
                                      ),
                                    ),
                                    Container(
                                      // row33vH (62:1867)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // totalhargabarangNxZ (62:1868)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 126 * fem, 0 * fem),
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
                                            // rp980000gTT (62:1869)
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
                                      // row3DCV (62:1870)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ongkirkCR (62:1871)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 203 * fem, 0 * fem),
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
                                            // rp24000Fus (62:1872)
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
                                      // row3zsT (62:1873)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // potonganhargaw21 (62:1874)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 141 * fem, 0 * fem),
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
                                            // rp20000eh7 (62:1875)
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
                                      // row3kk9 (62:1876)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // biayalain3z9 (62:1877)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 185 * fem, 0 * fem),
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
                                            // rp20000qv1 (62:1878)
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
                                      // row3nKT (62:1879)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // totalpembayaranwi9 (62:1880)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 95 * fem, 0 * fem),
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
                                            // rp1004000rq7 (62:1881)
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
                    // frame2BsP (62:1882)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 23.5 * fem, 24 * fem, 23.5 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffc2c2c2)),
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
                    // autogroup2k4udUV (TQTj4u7ymxKqDJ177o2K4u)
                    width: double.infinity,
                    height: 469 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // producty2Z (62:1884)
                          left: 24 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 327 * fem,
                            height: 469 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // cardproductGXT (62:1886)
                                  padding: EdgeInsets.fromLTRB(
                                      16 * fem, 16 * fem, 16 * fem, 16 * fem),
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
                                        // fotodetailwtV (62:1887)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 104 * fem, 7 * fem),
                                        width: double.infinity,
                                        height: 67 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // rectangle15E1 (62:1888)
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
                                                    'assets/images/logo.png',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // detailproductxHo (62:1889)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    // jilbabpasminahFP (62:1890)
                                                    'Jilbab Pasmina',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7 * fem,
                                                  ),
                                                  Text(
                                                    // hijaumChw (62:1891)
                                                    'Hijau - M',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7 * fem,
                                                  ),
                                                  Text(
                                                    // xrp120000L3T (62:1892)
                                                    '1 x Rp120.000',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                        // pricing3yT (62:1893)
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // totalharga1QV (62:1894)
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
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff818181),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // rp240000ukm (62:1895)
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
                                  // cardproductpcq (62:1897)
                                  padding: EdgeInsets.fromLTRB(
                                      16 * fem, 16 * fem, 16 * fem, 16 * fem),
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
                                        // fotodetailguw (62:1898)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 104 * fem, 7 * fem),
                                        width: double.infinity,
                                        height: 67 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // rectangle1D9B (62:1899)
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
                                                    'assets/images/logo.png',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // detailproduct7VT (62:1900)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    // jilbabpasminarhw (62:1901)
                                                    'Jilbab Pasmina',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7 * fem,
                                                  ),
                                                  Text(
                                                    // hijaumadw (62:1902)
                                                    'Hijau - M',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7 * fem,
                                                  ),
                                                  Text(
                                                    // xrp120000Jpq (62:1903)
                                                    '1 x Rp120.000',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                        // pricingFEH (62:1904)
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // totalhargaCvD (62:1905)
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
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff818181),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // rp240000Xhb (62:1906)
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
                                  // cardproductSpZ (62:1908)
                                  padding: EdgeInsets.fromLTRB(
                                      16 * fem, 16 * fem, 16 * fem, 16 * fem),
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
                                        // fotodetailXb7 (62:1909)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 104 * fem, 7 * fem),
                                        width: double.infinity,
                                        height: 67 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // rectangle1TUm (62:1910)
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
                                                    'assets/images/logo.png',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // detailproductZXo (62:1911)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    // jilbabpasminahe1 (62:1912)
                                                    'Jilbab Pasmina',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7 * fem,
                                                  ),
                                                  Text(
                                                    // hijaumR4D (62:1913)
                                                    'Hijau - M',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7 * fem,
                                                  ),
                                                  Text(
                                                    // xrp120000Lgy (62:1914)
                                                    '1 x Rp120.000',
                                                    style: SafeGoogleFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                        // pricingH6R (62:1915)
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // totalhargaE1f (62:1916)
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
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff818181),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // rp240000wgm (62:1917)
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
                        Positioned(
                          // divfootertM7 (62:1918)
                          left: 0 * fem,
                          top: 400 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                24 * fem, 12 * fem, 24 * fem, 24 * fem),
                            width: 375 * fem,
                            height: 86 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x33000000),
                                  offset: Offset(0 * fem, -4 * fem),
                                  blurRadius: 7 * fem,
                                ),
                              ],
                            ),
                            child: Container(
                              // buttonx65 (I62:1918;152:131)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // morebutton5gV (I62:1918;152:129)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                    width: 50 * fem,
                                    height: 50 * fem,
                                    child: Image.asset(
                                      'assets/images/logo.png',
                                      width: 50 * fem,
                                      height: 50 * fem,
                                    ),
                                  ),
                                  Container(
                                    // checkbuttonCFK (I62:1918;152:75)
                                    width: 269 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xfff94f31),
                                      borderRadius:
                                          BorderRadius.circular(8 * fem),
                                    ),
                                    child: Center(
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
                                  ),
                                ],
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
