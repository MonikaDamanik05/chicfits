import 'package:ChicFits/screens/konfirmasi_code_screen.dart';
import 'package:flutter/material.dart';

class MasukkanEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 100),
            const Text(
              'Masukkan Alamat E-mail atau Nomor Telepon',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/masukkan_email.png',
              height: 250,
            ),
            const SizedBox(height: 25.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'E-mail/Nomor Telepon',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 21.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman KodeVerifikasiScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KonfirmasiKodeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[350],
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 13),
                ),
                child: const Text('Kirim', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
