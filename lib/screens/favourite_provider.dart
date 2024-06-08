import 'package:flutter/material.dart';
import 'package:plant_project/models/product.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductModel> _favoriteProducts = [];

  List<ProductModel> get favoriteProducts => _favoriteProducts;

  bool isFavorite(ProductModel product) {
    return _favoriteProducts.contains(product);
  }

  void addFavorite(ProductModel product) {
    _favoriteProducts.add(product);
    notifyListeners();
  }

  void removeFavorite(ProductModel product) {
    _favoriteProducts.remove(product);
    notifyListeners();
  }
}
