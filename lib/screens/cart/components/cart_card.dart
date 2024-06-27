import 'package:flutter/material.dart';

//import '../../../constants.dart';
import '../../../models/cartmodel.dart';

class CartCard extends StatelessWidget {
  final CartItem cart;

  const CartCard({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (cart.product.images.isNotEmpty && cart.product.images[0].isNotEmpty)
          Image.asset(
            cart.product.images[0],
            width: 80,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error, size: 88);
            },
          )
        else
          Icon(Icons.broken_image, size: 88),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text("Quantity: ${cart.quantity}"),
            Text(
              "\Rp. ${cart.product.price}",
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
      ],
    );
  }
}
