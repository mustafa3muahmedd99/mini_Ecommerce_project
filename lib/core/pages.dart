// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_e_commerce/core/route_name.dart';
import 'package:mini_e_commerce/pages/home_page.dart';
import 'package:mini_e_commerce/pages/product1_page.dart';
import 'package:mini_e_commerce/pages/product2_page.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RouteName.HomePage:
        return MaterialPageRoute(builder: (_) {
          return HomePage();
        });
      case RouteName.Product1_Page:
        return MaterialPageRoute(builder: (_) {
          return Product1Page();
        });
      case RouteName.Product2_page:
        return MaterialPageRoute(builder: (_) {
          return Product2Page();
        });
      default:
        throw Exception('Route not found!');
    }
  }
}


