import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const TextField(
            decoration: InputDecoration(
                hintText: 'Search', suffixIcon: Icon(Icons.search)),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.shopping_cart))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Semua produk',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Promosi', style: TextStyle(fontSize: 17)),
                Text('Nama Produk', style: TextStyle(fontSize: 17)),
                Text('Terlaris', style: TextStyle(fontSize: 17)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      buildProductCard(
                        'img/produk4.png',
                        'Redmi Note 9',
                        'Rp.5.000.000',
                      ),
                      buildProductCard(
                        'img/produk3.png',
                        'Baterai Alkalin AAA',
                        'Rp.30.000',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      buildProductCard(
                        'img/produk2.png',
                        'Sabun Lifebuoy',
                        'Rp.3.000',
                      ),
                      buildProductCard(
                        'img/produk1.png',
                        'Minyak kita',
                        '\Rp.5.000',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(String imagePath, String productName, String price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(imagePath),
              width: 80,
              height: 80,
            ),
            SizedBox(height: 16.0),
            Text(productName, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16.0),
            Stack(
              alignment: Alignment.center,
              children: [
                Text(price, style: TextStyle(fontSize: 14)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    '+ Keranjang',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
