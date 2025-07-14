import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/empty_bag.dart';
import 'package:e_commerce_app/widgets/products/product_widget.dart';
import 'package:flutter/material.dart';

class ViewedRecently extends StatelessWidget {
  static const routName = '/ViewedRecently';
  const ViewedRecently({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
          body: EmptyBag(
            imagePath: AssetsManager.shoppingBasket,
            title: "Whoops",
            subtile: "Your Wishlist is Empty",
            buttonText: "Shop Now",
          ),
        )
        : Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomAppBar(
              label: "ViewedRecently(5)",
              showActions: true,
              centerTitle: false,
            ),
          ),
          body: DynamicHeightGridView(
            builder: (context, index) {
              return ProductWidget();
            },
            itemCount: 20,
            crossAxisCount: 2,
          ),
        );
  }
}
