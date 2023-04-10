import 'package:flutter/material.dart';
import 'package:food_market/models/models.dart';

import 'ui/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      // home: PaymentPage(
      //   transaction: Transaction(
      //       food: mockFoods[1],
      //       user: mockUser,
      //       quantity: 13,
      //       total: (mockFoods[1].price * 2 * 1.1).toInt() + 50000),
      // ),
    );
  }
}
