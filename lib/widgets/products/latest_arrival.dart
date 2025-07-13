import 'package:e_commerce_app/consts/app_consts.dart';
import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LatestArrival extends StatelessWidget {
  const LatestArrival({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: FancyShimmerImage(
              imageUrl: AppConsts.productImageUrl,
              width: size.width * 0.28,
              height: size.width * 0.28,
              boxFit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitlesTextWidget(label: 'Title ', maxLines: 2, fontSize: 16),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(IconlyLight.heart),
                    iconSize: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart_rounded),
                    iconSize: 20,
                  ),
                ],
              ),

              SubtitleTextWidget(label: "166.5\$"),
            ],
          ),
        ],
      ),
    );
  }
}
