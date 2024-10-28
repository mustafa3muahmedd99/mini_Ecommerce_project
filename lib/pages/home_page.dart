// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:mini_e_commerce/core/route_name.dart';
import 'package:mini_e_commerce/core/widgets/build_product_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(context),
      bottomNavigationBar: _bottomnavigationbar(),
    );
  }

  BottomNavigationBar _bottomnavigationbar() {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }

  SingleChildScrollView _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.Product1_Page);
                  },
                  child: BuildProductItem(
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
                  child: BuildProductItem(
                    productName: 'Product 2',
                    price: '340\$',
                    image: Image.asset(
                      'assets/images/product_page.jpg',
                      fit: BoxFit.contain,
                    ),
                    description: 'description...',
                  ),
                ),
                BuildProductItem(
                  productName: 'Product 3',
                  price: '340\$',
                  image: Image.asset(
                    'assets/images/basketball.jpeg',
                    fit: BoxFit.contain,
                  ),
                  description: 'description...',
                ),
                BuildProductItem(
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
          ],
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'search',
            filled: true,
            fillColor: Color(0xFFF3F4F6),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}

Widget _buildCategoryItem(IconData icon, String label, Color color) {
  return Column(
    children: [
      InkWell(
        onTap: () {},
        child: CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon, color: Colors.black),
        ),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(color: Colors.black)),
    ],
  );
}
