import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({super.key, required this.label, this.fontSize = 20});

  final String label;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      period: const Duration(seconds: 3),
      child: TitlesTextWidget(label: label, fontSize: fontSize),
    );
  }
}
