import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/widgets/app_name_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.label,
    this.showActions = false,
    this.centerTitle = false,
    this.showBackButton = false, // ✅ باراميتر جديد
  });

  final String label;
  final bool showActions;
  final bool centerTitle;
  final bool showBackButton; // ✅

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      centerTitle: centerTitle,
      title: AppNameText(label: label),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AssetsManager.shoppingCart),
            ),
      actions: showActions
          ? [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_forever_rounded),
              ),
            ]
          : [],
    );
  }
}
