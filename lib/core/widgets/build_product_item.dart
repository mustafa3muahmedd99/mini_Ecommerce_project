import 'package:flutter/material.dart';

class BuildProductItem extends StatelessWidget {
  final String productName;
  final String description;
  final String price;
  final Image image;

  const BuildProductItem(
      {required this.productName,
      required this.price,
      required this.image,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
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
                Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(color: Colors.orange, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
