class Order {
  final String id;
  final String nama;
  final String alamat;
  final double total;
  // Tambahkan lebih banyak properti sesuai dengan data respons yang Anda terima

  Order({
    required this.id,
    required this.nama,
    required this.alamat,
    required this.total,
    // Tambahkan lebih banyak properti sesuai dengan data respons
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'] ?? '',
      nama: json['nama'] ?? '',
      alamat: json['alamat'] ?? '',
      total: json['total'] != null ? double.parse(json['total'].toString()) : 0.0,
      // Tambahkan lebih banyak properti sesuai dengan data respons
    );
  }
}
