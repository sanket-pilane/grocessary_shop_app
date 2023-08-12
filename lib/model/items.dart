import 'package:flutter/material.dart';
import 'package:grocessary_shop_app/constants.dart';

class GroceryItems extends ChangeNotifier {
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", kAvocadoImage, Colors.green],
    ["Banana", "2.50", kBananaImage, Colors.yellow],
    ["Chicken", "12.80", kChickenImage, Colors.brown],
    ["Water", "1.00", kWaterImage, Colors.blue],
    ["Corn", "2.00", kCornImage, Colors.green],
    ["Mushroom", "5.00", kMushroomImage, Colors.orange],
    ["BitRoot", "2.40", kBitRootImage, Colors.red],
    ["Potato", "3.00", kPotatoImage, Colors.yellow],
    ["Cabbage", "4.00", kCabbageImage, Colors.green],
    ["Pumkin", "5.00", kMushroomImage, Colors.orange],
    ["Onion", "6.00", kOnionImage, Colors.purple],
    ["Carrot", "5.00", kCarrotImage, Colors.yellow],
    ["Broccoli", "4.60", kBroccoliImage, Colors.green],
    ["Eggplant", "5.30", kEggplantImage, Colors.deepPurple],
    ["Tomato", "5.50", kTomatoImage, Colors.red],
    ["Bell-paper", "3.00", kPaperImage, Colors.green],
  ];
  get shopItems => _shopItems;

  final List _cartItems = [];
  get cartItems => _cartItems;

  void addItem(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItems(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String totalAmount() {
    double total = 0;

    for (int i = 0; i < _cartItems.length; i++) {
      total += double.parse(_cartItems[i][1]);
    }
    return total.toStringAsFixed(2);
  }
}
