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
    final orderNumber = _orderNumberController.text.trim();
    if (orderNumber.isEmpty) {
      // Tampilkan popup atau pesan bahwa orderNumber belum diisi.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Nomor Resi Belum Diisi'),
            content: Text('Silakan isi nomor resi terlebih dahulu.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
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
            builder: (context) => DetailOrder(),
          ),
        );
      } else {
        // Tampilkan popup atau pesan bahwa data pemesanan tidak ditemukan.
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Data Pemesanan Tidak Ditemukan'),
              content:
                  Text('Data pemesanan dengan nomor tersebut tidak ditemukan.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
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
        builder: (context) {
          return AlertDialog(
            title: Text('Data Tidak Ditemukan'),
            content: Text('Pastikan mengisi nomor resi dengan benar'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
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
                              0 * fem, 0 * fem, 147 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/landing');
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
                                  child: TextField(
                                    controller: _orderNumberController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(7 * fem),
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _fetchOrderDetails();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: orangeColor, // Warna latar belakang tombol.
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8 * fem), // Ganti dengan nilai yang sesuai.
                      ),
                      minimumSize: Size(
                          331,
                          52 *
                              fem), // Mengatur lebar dan tinggi minimum tombol.
                    ),
                    child: Container(
                      width: 100 *
                          fem, // Biarkan tetap double.infinity agar tombol mengisi lebar minimum.
                      height: 52 * fem,
                      alignment: Alignment.center,
                      child: Text(
                        'Cari Order',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
