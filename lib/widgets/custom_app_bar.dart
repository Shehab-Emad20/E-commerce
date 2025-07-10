import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/widgets/app_name_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.label,
    this.showActions = false,
  });

  final String label;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      title: AppNameText(label: label),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(AssetsManager.shoppingCart),
      ),
      actions:
          showActions
              ? [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_forever_rounded),
                ),
              ]
              : [],
    );
  }
}
