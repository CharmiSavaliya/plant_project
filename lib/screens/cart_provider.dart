import 'package:flutter/material.dart';
import 'package:plant_project/models/product.dart';

class CartProvider with ChangeNotifier {
  List<Map<String, dynamic>> _cartItems = [];

  List<Map<String, dynamic>> get cartItems => _cartItems;

  void addToCart(ProductModel product, int quantity) {
    _cartItems.add({'product': product, 'quantity': quantity});
    notifyListeners();
  }

  void removeFromCart(ProductModel product) {
    _cartItems.removeWhere((item) => item['product'] == product);
    notifyListeners();
  }

  void incrementQuantity(ProductModel product) {
    for (var item in _cartItems) {
      if (item['product'] == product) {
        item['quantity']++;
        break;
      }
    }
    notifyListeners();
  }

  void decrementQuantity(ProductModel product) {
    for (var item in _cartItems) {
      if (item['product'] == product) {
        if (item['quantity'] > 1) {
          item['quantity']--;
        }
        break;
      }
    }
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
