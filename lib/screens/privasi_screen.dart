import 'package:flutter/material.dart';

class PrivasiScreen extends StatelessWidget {
  const PrivasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kebijakan Privasi'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privasi Pengguna',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Kami menghormati privasi Anda sebagai pengguna aplikasi kami. Dalam aplikasi ini, kami tidak mengumpulkan informasi pribadi Anda kecuali informasi yang Anda berikan secara sukarela saat menggunakan layanan kami.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Informasi yang Kami Kumpulkan',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Kami dapat mengumpulkan informasi yang Anda berikan saat melakukan transaksi, seperti nama, alamat, nomor telepon, dan informasi pembayaran. Kami juga dapat mengumpulkan informasi non-pribadi yang dikirimkan secara otomatis oleh perangkat Anda saat mengakses aplikasi kami, seperti alamat IP, jenis perangkat, dan browser yang Anda gunakan.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Penggunaan Informasi',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Informasi yang kami kumpulkan dapat digunakan untuk memproses pembayaran, mengirim notifikasi tentang layanan atau promosi yang kami tawarkan, dan meningkatkan pengalaman pengguna dalam menggunakan aplikasi kami.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Kebijakan Perubahan',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Kebijakan privasi ini dapat berubah dari waktu ke waktu. Perubahan signifikan akan diberitahukan kepada Anda melalui pemberitahuan di aplikasi atau melalui email yang Anda berikan kepada kami.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Hubungi Kami',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Jika Anda memiliki pertanyaan atau masalah tentang kebijakan privasi kami, jangan ragu untuk menghubungi kami di alamat email: privacy@example.com.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
