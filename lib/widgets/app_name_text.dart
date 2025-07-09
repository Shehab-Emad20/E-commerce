import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({super.key, this.fontSize = 20});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.purple, // اللون الأساسي للنص
      highlightColor: Colors.red, // اللون المتدرج المتحرك
      period: const Duration(seconds: 3), // سرعة الحركة
      child: TitlesTextWidget(label: "Shop Smart", fontSize: fontSize),
    );
  }
}
