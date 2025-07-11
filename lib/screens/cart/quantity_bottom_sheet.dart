import 'dart:developer';

import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class QuantityBottomSheet extends StatelessWidget {
  const QuantityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 6,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    log("index $index");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                      child: SubtitleTextWidget(label: "${index + 1}"),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
