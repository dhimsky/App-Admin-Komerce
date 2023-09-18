import 'package:flutter/material.dart';
import 'cari_order_repository.dart'; // Impor repository yang telah Anda buat

class CariOrderController {
  final CariOrderRepository _repository = CariOrderRepository();
  String namaPengguna = ''; // Variabel untuk menyimpan data yang akan ditampilkan pada antarmuka pengguna

  Future<void> cariOrder(String search) async {
    try {
      final jsonResponse = await _repository.getData(search);
      // Menggunakan data yang diterima dari repository
      if (jsonResponse != null) {
        // Contoh: Menyimpan nama yang diterima dari respons
        namaPengguna = jsonResponse['nama'];
      }
    } catch (e) {
      print('Terjadi kesalahan dalam controller: $e');
    }
  }
}
