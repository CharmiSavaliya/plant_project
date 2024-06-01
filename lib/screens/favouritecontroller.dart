import 'package:get/get.dart';
import 'package:plant_project/models/product.dart';

class FavoriteController extends GetxController {
  var favorites = <ProductModel>[].obs;

  void addFavorite(ProductModel product) {
    favorites.add(product);
  }

  void removeFavorite(ProductModel product) {
    favorites.remove(product);
  }

  bool isFavorite(ProductModel product) {
    return favorites.contains(product);
  }
}
