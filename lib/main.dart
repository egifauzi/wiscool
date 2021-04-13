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
      home: FoodDetailsPage(
        transaction: Transaction(food: mockFoods[1]),
      ),
    );
  }
}
