import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../details/details_screen.dart';

class SmartphoneScreen extends StatelessWidget {
  const SmartphoneScreen({super.key});

  static String routeName = "/smartphones";

  @override
  Widget build(BuildContext context) {
    List<Product> smartphoneProducts = demoProducts
        .where((product) => product.kategori == "Smartphone")
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            itemCount: smartphoneProducts.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => ProductCard(
              product: smartphoneProducts[index],
              onPress: () => Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments:
                    ProductDetailsArguments(product: smartphoneProducts[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
