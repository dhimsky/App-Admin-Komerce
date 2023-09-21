import 'package:flutter/material.dart';
import 'package:komerce/shared/theme.dart';
import 'package:komerce/models/order_model.dart';
import 'package:komerce/services/order_service.dart';

class CariOrder extends StatelessWidget {
  final TextEditingController _orderIdController = TextEditingController();
  final OrderController _orderController = OrderController();

  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hasil Pencarian Order ID'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _checkOrder(BuildContext context) async {
    final String orderId = _orderIdController.text;
    final Order? order = await _orderController.getOrderById(orderId);

    if (order != null) {
      _showDialog(context,
          'Order ID ditemukan: ${order.name}'); // Menambahkan parameter context
    } else {
      _showDialog(context,
          'Order ID tidak ditemukan.'); // Menambahkan parameter context
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
                                // identitaskamuRSh (23:1971)
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
                                    controller: _orderIdController,
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
                  InkWell(
                    onTap: () {
                      _checkOrder(context);
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
                                    'Cari Order',
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
