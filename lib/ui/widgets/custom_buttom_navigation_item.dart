import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:komerce/ui/pages/log_activity_page.dart';
import 'package:komerce/ui/pages/home_page.dart';
import 'package:komerce/ui/pages/profile_page.dart';
import 'package:komerce/ui/pages/ubah_password_page.dart';

class CustomBottomNavigationItem extends StatefulWidget {
  const CustomBottomNavigationItem({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationItemState createState() =>
      _CustomBottomNavigationItemState();
}

class _CustomBottomNavigationItemState
    extends State<CustomBottomNavigationItem> {
  int _currentIndex = 0; // Indeks halaman aktif

  // Daftar halaman yang akan ditampilkan pada navigasi
  final List<Widget> _pages = [
    HomePage(),
    LogActivity(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Tampilkan halaman sesuai dengan indeks
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Atur warna latar belakang sesuai kebutuhan
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Warna bayangan
              blurRadius: 5.0, // Ukuran blur bayangan
              spreadRadius: 2.0, // Jarak penyebaran bayangan
              offset: Offset(0, -3), // Posisi bayangan (di atas)
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet),
              label: 'Log Aktivitas',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Profile',
            ),
          ],
          currentIndex: _currentIndex, // Atur indeks halaman aktif
          selectedItemColor:
              Color(0xfff95031), // Warna saat item terpilih (aktif)
          unselectedItemColor:
              Colors.grey, // Warna saat item tidak terpilih (tidak aktif)
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Perbarui indeks halaman aktif
            });
          },
        ),
      ),
    );
  }
}
