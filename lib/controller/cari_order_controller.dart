import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:komerce/services/cari_order_service.dart';

class CariOrderController {
  final CariOrderRepository _repository = CariOrderRepository();

  Future<void> searchOrder(BuildContext context, String search) async {
    try {
      final response = await _repository.getData(search);

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        // Lakukan sesuatu dengan jsonResponse, misalnya, pindah ke halaman selanjutnya.
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NextPage(data: jsonResponse),
          ),
        );
      } else {
        // Menampilkan pesan jika pencarian tidak berhasil.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Tidak diketahui'),
          ),
        );
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
      // Menampilkan pesan kesalahan jika terjadi masalah selama pencarian.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Terjadi kesalahan: $e'),
        ),
      );
    }
  }
}

class NextPage extends StatelessWidget {
  final dynamic data;

  NextPage({required this.data});

  @override
  Widget build(BuildContext context) {
    // Tampilkan data di halaman selanjutnya atau lakukan apa pun yang diperlukan.
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Selanjutnya'),
      ),
      body: Center(
        child: Text('Data: $data'),
      ),
    );
  }
}
