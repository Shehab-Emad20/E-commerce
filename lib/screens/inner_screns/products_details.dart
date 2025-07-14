import 'package:e_commerce_app/consts/app_consts.dart';
import 'package:e_commerce_app/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductsDetails extends StatefulWidget {
  static const String routeName = '/ProductsDetails';
  const ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          label: "ShopSmart",
          showBackButton: true,
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            FancyShimmerImage(
              imageUrl: AppConsts.productImageUrl,
              height: size.height * .38,
              width: double.infinity,
              boxFit: BoxFit.fill,
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: TitlesTextWidget(label: "Title " * 10, maxLines: 2),
                ),
                SubtitleTextWidget(label: "166\$"),
              ],
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                // Heart icon on the left
                IconButton(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.heart),
                ),

                const SizedBox(width: 10),

                // Add to cart button on the right, taking full space
                Expanded(
                  child: SizedBox(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined),
                      label: const Text("Add to cart"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitlesTextWidget(label: "About this Item"),
                SubtitleTextWidget(label: "In Phones "),
              ],
            ),
            SizedBox(height: 12),
            SubtitleTextWidget(label: "In Phones" * 15),
          ],
        ),
      ),
    );
  }
}
