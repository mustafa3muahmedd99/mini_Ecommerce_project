// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_mini_e_commerce_project/core/route_name.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'search',
              filled: true,
              fillColor: Color(0xFFF3F4F6), // اللون الرمادي الخفيف
              prefixIcon:
                  Icon(Icons.search, color: Colors.black), // أيقونة البحث
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black), // الأيقونة على اليمين
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories Section
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryItem(
                    Icons.sports_baseball, 'Sports', Colors.orange),
                _buildCategoryItem(Icons.devices, 'Devices', Colors.grey[300]!),
                _buildCategoryItem(Icons.book, 'Books', Colors.grey[300]!),
                _buildCategoryItem(
                    Icons.shopping_bag, 'Clothes', Colors.grey[300]!),
              ],
            ),
            SizedBox(height: 24),
            // Best Selling Section
            Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, RouteName.Product1_Page),
                    child: _buildProductItem(
                      productName: 'Product 1',
                      price: '340\$',
                      image: Image.asset(
                        'assets/images/basketball.jpeg',
                        fit: BoxFit.contain,
                      ),
                      description: 'description...',
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, RouteName.Product2_page),
                    child: _buildProductItem(
                      productName: 'Product 2',
                      price: '340\$',
                      image: Image.asset(
                        'assets/images/product_page.jpg',
                        fit: BoxFit.contain,
                      ),
                      description: 'description...',
                    ),
                  ),
                  _buildProductItem(
                    productName: 'Product 3',
                    price: '340\$',
                    image: Image.asset(
                      'assets/images/basketball.jpeg',
                      fit: BoxFit.contain,
                    ),
                    description: 'description...',
                  ),
                  _buildProductItem(
                    productName: 'Product 4',
                    price: '340\$',
                    image: Image.asset(
                      'assets/images/product_page.jpg',
                      fit: BoxFit.contain,
                    ),
                    description: 'description...',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

Widget _buildCategoryItem(IconData icon, String label, Color color) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: color,
        child: Icon(icon, color: Colors.black),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(color: Colors.black)),
    ],
  );
}

class _buildProductItem extends StatelessWidget {
  final String productName;
  final String description;
  final String price;
  final Image image;

  const _buildProductItem(
      {required this.productName,
      required this.price,
      required this.image,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(description),
                SizedBox(
                  height: 8,
                ),
                Text(
                  price,
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
