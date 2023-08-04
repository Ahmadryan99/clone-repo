import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constants.dart';
import '../../../../controllers/MenuAppController.dart';
import '../../../../models/MyFiles.dart';
import '../../../../responsive.dart';
import 'dashboard/components/header.dart';
import 'main/components/side_menu.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({
    Key? key,
    required this.info,
  }) : super(key: key);

  final InfoDosenModel info;

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController _currentPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  final TextEditingController _passwordController = TextEditingController();
  final _togglePasswordVisibility _passwordVisibilityToggle =
      _togglePasswordVisibility();
  // void _togglePasswordVisibility() {
  //   setState(() {
  //     _isPasswordVisible = !_isPasswordVisible;
  //   });
  // }

  void _onSaveButtonPressed() {
    // Lakukan validasi dan implementasi perubahan password di sini
    String currentPassword = _currentPasswordController.text;
    String newPassword = _newPasswordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // Lakukan validasi sesuai kebutuhan, misalnya memeriksa apakah password saat ini sesuai dengan password pengguna
    // dan apakah password baru sesuai dengan konfirmasi password
    if (currentPassword.isEmpty ||
        newPassword.isEmpty ||
        confirmPassword.isEmpty) {
      // Tampilkan pesan kesalahan jika ada field yang kosong
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Semua field harus diisi.'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else if (newPassword != confirmPassword) {
      // Tampilkan pesan kesalahan jika password baru dan konfirmasi password tidak sesuai
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Password baru dan konfirmasi password tidak sesuai.'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // Lakukan perubahan password di sini (misalnya memanggil fungsi untuk mengganti password)
      // ...

      // Tampilkan pesan sukses jika password berhasil diubah
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Sukses'),
          content: Text('Password berhasil diubah.'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // SideMenu will be displayed here
          SideMenu(),
          Expanded(
            // ChangePassword will be displayed here
            child: Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed:
                              context.read<MenuAppController>().controlMenu,
                        ),
                      if (!Responsive.isMobile(context))
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pengaturan",
                              style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Ubah Kata Sandi Anda",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      if (!Responsive.isMobile(context))
                        Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                      // Expanded(child: SearchField()),
                      ProfileCard(),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SizedBox(
                      height: 35,
                      width: 126,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff3772FF)),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white, // Added white background color
                      ),
                      padding: EdgeInsets.all(
                          16), // Added padding for better appearance
                      child: Column(
                        children: [
                          Image.asset("assets/images/logokkn_hitam.png"),
                          SizedBox(
                            height: 15,
                          ),
                          Text('Ubah Password',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(height: 10),
                          Container(
                            height: 48,
                            width: 329,
                            child: TextFormField(
                              keyboardType: TextInputType
                                  .text, // Menggunakan input teks biasa
                              style: TextStyle(
                                  color: Colors
                                      .black), // Atur warna teks saat diisi
                              decoration: InputDecoration(
                                labelText: 'Username',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                labelStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 48,
                            width: 329,
                            child: TextField(
                              controller: _passwordController,
                              obscureText: !_isPasswordVisible,
                              style: TextStyle(
                                color: Colors.black,
                              ), // Atur warna teks saat diisi
                              decoration: InputDecoration(
                                labelText: 'Password Baru',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                labelStyle: TextStyle(color: Colors.black),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    // Toggle the password visibility
                                    _isPasswordVisible = !_isPasswordVisible;
                                  },
                                  child: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 48,
                            width: 329,
                            child: TextField(
                              controller: _passwordController,
                              obscureText: !_isPasswordVisible,
                              style: TextStyle(
                                color: Colors.black,
                              ), // Atur warna teks saat diisi
                              decoration: InputDecoration(
                                labelText: 'Konfirmasi Password Baru',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                labelStyle: TextStyle(color: Colors.black),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    // Toggle the password visibility
                                    _isPasswordVisible = !_isPasswordVisible;
                                  },
                                  child: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 48,
                            width: 329,
                            child: ElevatedButton(
                              onPressed: _onSaveButtonPressed,
                              child: Text('Simpan Perubahan'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _togglePasswordVisibility {
  bool _isPasswordVisible = false;

  bool get isPasswordVisible => _isPasswordVisible;

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
  }
}
