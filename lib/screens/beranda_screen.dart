import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SELAMAT DATANG DI CHICFITS!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color.fromARGB(255, 101, 147, 169),
          ),
        ),
        backgroundColor: Colors.white, // Warna biru
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Cari Produk...',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0, // Padding vertikal
                    horizontal: 20.0, // Padding horizontal
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 35),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Text(
                      'MENYEWA BAJU WISUDA DENGAN LEBIH MUDAH',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/images/wisuda.png', // Ubah sesuai path gambar Anda
                      height: 220,
                      width: double
                          .infinity, // Gunakan double.infinity untuk melebar sesuai dengan lebar layar
                      fit: BoxFit
                          .contain, // Mengatur gambar agar sesuai dalam container
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Kategori',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Mengatur jarak antar widget menjadi sama
                  children: [
                    buildCategory('Hijab', 'assets/images/hijab.png', context),
                    buildCategory(
                        'Non - Hijab', 'assets/images/non_hijab.png', context),
                    buildCategory('Pria', 'assets/images/pria.png', context),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'FAVORITE GOWNS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              // Implementasi produk yang paling banyak disewa
              // Misalnya menggunakan ListView.builder
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favoriteProducts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                        favoriteProducts[index].image), // Gambar produk
                    title: Text(favoriteProducts[index].name), // Nama produk
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Harga: ${favoriteProducts[index].price}'), // Harga produk
                        Text(
                            'Ukuran: ${favoriteProducts[index].size}'), // Ukuran produk
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String name, String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Action when category is tapped
        if (name == 'Hijab') {
          Navigator.pushNamed(context, '/hijab-screen');
        } else if (name == 'Non - Hijab') {
          Navigator.pushNamed(context, '/non-hijab-screen');
        } else if (name == 'Pria') {
          Navigator.pushNamed(context, '/pria-screen');
        }
      },
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 100, // Ubah sesuai kebutuhan
            width: 100, // Ubah sesuai kebutuhan
            fit: BoxFit.cover,
          ),
          Text(name),
        ],
      ),
    );
  }
}

// Class untuk merepresentasikan produk favorit
class FavoriteProduct {
  final String image;
  final String name;
  final double price;
  final String size;

  FavoriteProduct({
    required this.image,
    required this.name,
    required this.price,
    required this.size,
  });
}

// Daftar produk favorit (contoh data)
List<FavoriteProduct> favoriteProducts = [
  FavoriteProduct(
    image: 'assets/images/non_hijab_3.png',
    name: 'Kebaya Kondangan/Kebaya Wisuda Payet',
    price: 300,
    size: 'S',
  ),
  FavoriteProduct(
    image: 'assets/images/hijab_2.png',
    name: 'Kebaya Untuk Pertunangan/Kebaya Wisuda',
    price: 200,
    size: 'M',
  ),
  FavoriteProduct(
    image: 'assets/images/non_hijab_2.png',
    name: 'Kebaya Wisuda Bunga',
    price: 200,
    size: 'M',
  ),
  FavoriteProduct(
    image: 'assets/images/non_hijab_5.png',
    name: 'Kebaya Wisuda',
    price: 200,
    size: 'M',
  ),
];
