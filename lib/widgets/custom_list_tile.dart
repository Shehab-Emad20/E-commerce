import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.function,
  });
  final String imagePath, text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(imagePath, height: 30),
      title: SubtitleTextWidget(label: text),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }
}
