import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class BottomCheckout extends StatelessWidget {
  const BottomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: SizedBox(
        height: kBottomNavigationBarHeight + 20,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitlesTextWidget(label: "Total (6 Products/6 Items)"),
                    SubtitleTextWidget(label: "16.99\$"),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Chehout")),
            ],
          ),
        ),
      ),
    );
  }
}
