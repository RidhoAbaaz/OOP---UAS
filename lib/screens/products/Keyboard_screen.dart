import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../details/details_screen.dart';

class KeyboardScreen extends StatelessWidget {
  const KeyboardScreen({super.key});

  static String routeName = "/keyboards";

  @override
  Widget build(BuildContext context) {
    List<Product> keyboardsProducts = demoProducts
        .where((product) => product.kategori == "Keyboard")
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            itemCount: keyboardsProducts.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => ProductCard(
              product: keyboardsProducts[index],
              onPress: () => Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments:
                    ProductDetailsArguments(product: keyboardsProducts[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
