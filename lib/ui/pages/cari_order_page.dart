import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:komerce/ui/pages/detail_order_page.dart';
import 'package:komerce/services/order_service.dart';

class CariOrder extends StatefulWidget {
  @override
  _CariOrder createState() => _CariOrder();
}

class _CariOrder extends State<CariOrder> {
  final TextEditingController _orderNumberController = TextEditingController();
  final OrderService _orderService = OrderService();
  String _result = '';

  bool isLoading = false; // Tambahkan variabel isLoading.

  Future<void> _fetchOrderDetails() async {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final orderNumber = _orderNumberController.text.trim();
    if (orderNumber.isEmpty) {
      // Tampilkan popup atau pesan bahwa orderNumber belum diisi.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 247 * fem,
              height: 105 * fem,
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
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 197 * fem,
                    ),
                    child: Text(
                      'Nomor Resi Belum Diisi, silakan isi nomor resi terlebih dahulu!',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Plus Jakarta Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: double.infinity,
                  height: 40 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xfff95031),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Oke',
                      style: SafeGoogleFont(
                        'Plus Jakarta Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.26 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
      return; // Keluar dari fungsi jika orderNumber belum diisi.
    }

    // Mulai menampilkan loading indicator.
    setState(() {
      isLoading = true;
    });

    try {
      final orderData = await _orderService.getOrderDetails(orderNumber);
      if (orderData != null) {
        // Data pemesanan ditemukan, arahkan pengguna ke halaman detail_order_page.
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailOrder(orderNumber: orderNumber),
          ),
        );
      } else {
        // Tampilkan popup atau pesan bahwa data pemesanan tidak ditemukan.
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 247 * fem,
                height: 105 * fem,
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
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 197 * fem,
                      ),
                      child: Text(
                        'Data pemesanan dengan nomor tersebut tidak ditemukan.',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Plus Jakarta Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.26 * ffem / fem,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xfff95031),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Oke',
                        style: SafeGoogleFont(
                          'Plus Jakarta Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Tangani kesalahan dan tampilkan pesan kesalahan.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 247 * fem,
              height: 105 * fem,
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
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 197 * fem,
                    ),
                    child: Text(
                      'Data Tidak Ditemukan, pastikan mengisi nomor resi dengan benar.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Plus Jakarta Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: double.infinity,
                  height: 40 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xfff95031),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Oke',
                      style: SafeGoogleFont(
                        'Plus Jakarta Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.26 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    } finally {
      // Selesai mengambil data, hentikan loading indicator.
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Ubah latar belakang
        elevation: 0, // Menghapus shadow
        child: Container(
          padding: EdgeInsets.fromLTRB(24 * fem, 12 * fem, 24 * fem, 30 * fem),
          width: double.infinity,
          height: 90 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: ElevatedButton(
            onPressed: () {
              _fetchOrderDetails();
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
                'Cari Order',
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
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
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
                            0 * fem, 0 * fem, 147 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                    context); // Menggunakan Navigator.pop() untuk navigasi kembali
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 10 * fem, 1 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Cari Order',
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
                  height: 100 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 32 * fem,
                        child: Column(
                          children: [
                            Text(
                              'Masukan Nomor Resi',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 32 * fem,
                        top: 20 * fem,
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
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextField(
                                    controller: _orderNumberController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(9 * fem),
                                      hintText: 'KOMSHIP123XXX',
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
    );
  }
}
