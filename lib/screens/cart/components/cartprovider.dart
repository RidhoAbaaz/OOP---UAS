import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/models/cartmodel.dart'; // Import model CartItem

class CartProvider with ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(Product product) {
    // Cek apakah item sudah ada di cart
    int index = _items.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(product: product));
    }
    notifyListeners();
  }

  void removeItem(Product product) {
    _items.removeWhere((item) => item.product.id == product.id);
    notifyListeners();
  }

  void clearCart() {
    _items = [];
    notifyListeners();
  }

  double get totalPrice {
    double total = 0.0;
    for (var item in _items) {
      double price = _cleanPrice(item.product.price);
      total += price * item.quantity;
    }
    return total;
  }

  double _cleanPrice(String price) {
    // Remove thousand separators and convert to double
    return double.tryParse(price.replaceAll('.', '')) ?? 0.0;
  }
}
