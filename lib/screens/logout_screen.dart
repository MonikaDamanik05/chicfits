import 'package:ChicFits/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              _showLogoutDialog(
                  context); // Menampilkan dialog konfirmasi logout
            },
            child: Text('Logout'),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan dialog konfirmasi logout
  Future<void> _showLogoutDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // User harus menutup dialog secara eksplisit
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Apakah Anda yakin ingin logout?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
            TextButton(
              child: Text('Ya'),
              onPressed: () {
                // Lakukan logout di sini
                Navigator.of(context).pop(); // Tutup dialog
                // Tambahkan logika untuk logout, misalnya kembali ke halaman login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
