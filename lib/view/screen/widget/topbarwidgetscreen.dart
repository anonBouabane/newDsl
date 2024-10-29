import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class AppBarscreen extends StatelessWidget {
  const AppBarscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              navService.pushNamed('invoiceScreen');
            },
            icon: const Icon(Icons.inventory_outlined)),
        IconButton(
            onPressed: () {
              navService.pushNamed('cartscreen');
            },
            icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
