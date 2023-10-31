import 'package:estados/model/product.dart';
import 'package:flutter/material.dart';

class CarritoModel extends ChangeNotifier {
  // List of added products
  final List<Product> _cartItems = [];

  // Getter to access the list
  List<Product> get cartItems => _cartItems;

  // When we add a product, we notify our listeners
  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  // Getting the sum of the products in the cart
  double get totalAmount =>
      _cartItems.fold(0, (total, product) => total + product.price);
}
