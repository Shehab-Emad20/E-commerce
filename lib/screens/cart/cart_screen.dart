import 'package:e_commerce_app/screens/cart/bottom_checkout.dart';
import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/screens/cart/cart_widget.dart';
import 'package:e_commerce_app/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/empty_bag.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
          body: EmptyBag(
            imagePath: AssetsManager.shoppingBasket,
            title: "Whoops",
            subtile: "Your Cart is Empty",
            buttonText: "Shop Now",
          ),
        )
        : Scaffold(
          bottomSheet: BottomCheckout(),
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomAppBar(
              label: "Cart(5)",
              showActions: true,
              centerTitle: false,
            ),
          ),
          body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return CartWidget();
            },
          ),
        );
  }
}
