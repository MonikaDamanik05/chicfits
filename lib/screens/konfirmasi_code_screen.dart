import 'package:ChicFits/screens/reset_sandi.dart';
import 'package:flutter/material.dart';

class KonfirmasiKodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: 600),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Masukkan Kode Verifikasi Yang Sudah Diterima',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Image.asset(
                  'assets/images/kode_verifikasi.png',
                  height: 250,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Kode Verifikasi',
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman reset password
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetSandiScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[350], // Warna latar belakang
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                        vertical: 26, horizontal: 13), // Warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Kirim'),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  // Action ketika tombol "Kirim Ulang Kode Verifikasi" ditekan
                },
                child: Center(
                  child: const Text(
                    'Kirim Ulang Kode Verifikasi',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
