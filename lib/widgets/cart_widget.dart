import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhYw6YjljfJrrRYZ5kw5EEA0V6FQc4VqtpFQ&s",
                  height: size.height * 0.2,
                  width: size.height * 0.2,
                ),
              ),
              SizedBox(width: 10),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(
                            label: "Title" * 10,
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(IconlyLight.heart),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitlesTextWidget(label: "16\$"),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(IconlyLight.arrowDown2),
                          label: Text("qty:6"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
