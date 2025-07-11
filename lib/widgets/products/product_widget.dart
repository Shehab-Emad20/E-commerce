import 'package:e_commerce_app/consts/app_consts.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),

        onTap: () {},
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FancyShimmerImage(
                imageUrl: AppConsts.productImageUrl,
                width: double.infinity,
                height: size.height * 0.22,
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: TitlesTextWidget(label: "Ttile " * 10),
                ),
              ],
            ),

            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.heart),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 5, child: TitlesTextWidget(label: "166.5\$")),
              ],
            ),

            Flexible(
              child: Material(
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
            ),
          ],
        ),
      ),
    );
  }
}
