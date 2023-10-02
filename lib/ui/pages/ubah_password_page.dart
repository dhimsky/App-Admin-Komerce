import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:komerce/models/ubah_pw_model.dart';
import 'package:komerce/services/ubah_pw_service.dart';

class ChangePasswordPage extends StatefulWidget {
  ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  PasswordChange _passwordChange = PasswordChange(
    current_password: '',
    new_password: '',
    confirm_password: '',
  );

  late String _token;

  bool _showCurrentPassword = false;
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;

  @override
  void initState() {
    super.initState();
    _loadTokenFromSharedPreferences();
  }

  void _loadTokenFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _token = prefs.getString('token') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    Color orangeColor = Color(0xffF95031);
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Menghapus shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: Colors.black), // Ubah ikon dan warna
          onPressed: () {
            Navigator.pop(
                context); // Menggunakan Navigator.pop() untuk navigasi kembali
          },
        ),
        backgroundColor: Colors.white, // Ubah latar belakang
        title: Text(
          'Ubah Password',
          style: TextStyle(
            color: Colors.black, // Ubah warna teks
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password Lama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showCurrentPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showCurrentPassword = !_showCurrentPassword;
                        });
                      },
                    ),
                  ),
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  obscureText: !_showCurrentPassword,
                  onChanged: (value) {
                    setState(() {
                      _passwordChange.current_password = value;
                    });
                  },
                ),
                SizedBox(height: 20), // Tambahkan jarak antara inputan
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password Baru',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showNewPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showNewPassword = !_showNewPassword;
                        });
                      },
                    ),
                  ),
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  obscureText: !_showNewPassword,
                  onChanged: (value) {
                    setState(() {
                      _passwordChange.new_password = value;
                    });
                  },
                ),
                SizedBox(height: 16), // Tambahkan jarak antara inputan
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Konfirmasi Password Baru',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showConfirmPassword = !_showConfirmPassword;
                        });
                      },
                    ),
                  ),
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  obscureText: !_showConfirmPassword,
                  onChanged: (value) {
                    setState(() {
                      _passwordChange.confirm_password = value;
                    });
                  },
                ),
                SizedBox(height: 200), // Tambahkan jarak antara inputan
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Konfirmasi Perubahan Kata Sandi'),
                            content: Text(
                                'Apakah Anda yakin ingin mengubah kata sandi?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Tutup dialog
                                },
                                child: Text('Tidak'),
                              ),
                              TextButton(
                                onPressed: () {
                                  final passwordChangeService =
                                      PasswordChangeService();
                                  passwordChangeService
                                      .changePassword(_passwordChange, _token)
                                      .then((success) {
                                    if (success) {
                                      Navigator.of(context).pop(); // Tutup dialog
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content:
                                              Text('Kata Sandi berhasil diubah.'),
                                        ),
                                      );
                                      // Arahkan pengguna ke route /landing
                                      Navigator.of(context)
                                          .pushReplacementNamed('/landing');
                                    } else {
                                      Navigator.of(context).pop(); // Tutup dialog
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content:
                                              Text('Gagal mengubah kata sandi.'),
                                        ),
                                      );
                                    }
                                  });
                                },
                                child: Text('Ya'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size.fromHeight(44.0)),
                    backgroundColor: MaterialStateProperty.all(
                        orangeColor), // Gunakan warna orangeColor
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(9.0), // Atur radius menjadi 9
                      ),
                    ),
                  ),
                  child: Text('Simpan',
                      style: TextStyle(
                          color: Colors.white)), // Ubah warna teks menjadi putih
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
