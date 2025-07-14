import 'package:e_commerce_app/consts/app_consts.dart';
import 'package:e_commerce_app/screens/inner_screns/products_details.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: () async {
          await Navigator.pushNamed(context, ProductsDetails.routeName);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FancyShimmerImage(
                imageUrl: AppConsts.productImageUrl,
                width: double.infinity,
                height: size.height * 0.22,
              ),
            ),
            const SizedBox(height: 6),
            TitlesTextWidget(label: "Ttile " * 3, maxLines: 1),
            const SizedBox(height: 6),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.heart),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitlesTextWidget(label: "166.5\$"),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightBlue,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_shopping_cart_rounded),
                    ),
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
