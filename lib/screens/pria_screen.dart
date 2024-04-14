import 'package:flutter/material.dart';

class PriaProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kategori Produk',
          style: TextStyle(
              fontSize: 23, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Pakaian Pria',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari Produk...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              children: List.generate(
                products.length,
                (index) => ProductItem(
                  product: products[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String image;
  final String name;
  final String price;
  final String size;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.size,
  });
}

List<Product> products = [
  Product(
    image: 'assets/images/pria_1.png',
    name: 'Jas Pria Abu Terang',
    price: 'Rp 50.000',
    size: 'S',
  ),
  Product(
    image: 'assets/images/pria_2.png',
    name: 'Jas Pria Cokelat Gelap',
    price: 'Rp 180.000',
    size: 'L',
  ),
  Product(
    image: 'assets/images/pria_3.png',
    name: 'Jas Pria Biru Navy',
    price: 'Rp 150.000',
    size: 'L',
  ),
  Product(
    image: 'assets/images/pria_4.png',
    name: 'Jas Pria Cream',
    price: 'Rp 200.000',
    size: 'XL',
  ),
  Product(
    image: 'assets/images/pria_5.png',
    name: 'Jas Pria Cokelat Terang',
    price: 'Rp 250.000',
    size: 'XXL',
  ),
];

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(product.price),
                SizedBox(height: 4),
                Text('Size: ${product.size}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
