// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mini_e_commerce_project/core/pages.dart';
import 'package:flutter_mini_e_commerce_project/pages/home_page.dart';
import 'package:flutter_mini_e_commerce_project/pages/product1_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.generate,
    );
  }
}

