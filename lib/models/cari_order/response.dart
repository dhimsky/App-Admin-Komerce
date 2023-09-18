class MyResponse {
  final String nama;
  final String alamat;
  // Tambahkan lebih banyak properti sesuai dengan data yang Anda terima dari respons

  MyResponse({required this.nama, required this.alamat});

  factory MyResponse.fromJson(Map<String, dynamic> json) {
    return MyResponse(
      nama: json['nama'] ?? '', // Isi default jika data tidak tersedia
      alamat: json['alamat'] ?? '', // Isi default jika data tidak tersedia
    );
  }
}