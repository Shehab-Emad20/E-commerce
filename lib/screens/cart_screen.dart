import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/widgets/empty_bag.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyBag(
        imagePath: AssetsManager.shoppingBasket,
        title: "Whoops",
        subtile: "Your Cart is Empty",
        buttonText: "Shop Now",
      ),
    );
  }
}
