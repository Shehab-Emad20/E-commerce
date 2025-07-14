import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/screens/inner_screns/viewed_recently.dart';
import 'package:e_commerce_app/screens/inner_screns/wishlist.dart';
import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_list_tile.dart';
import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(label: "Shop Smart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TitlesTextWidget(
                  label: "Please login to have ultimate access",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.surface,
                        width: 3,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 7),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitlesTextWidget(label: "Shehab Emad"),
                      SubtitleTextWidget(label: "shehabz2014@gmail.com"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitlesTextWidget(label: "General"),
                  CustomListTile(
                    imagePath: AssetsManager.orderSvg,
                    text: "All Orders",
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.wishlistSvg,
                    text: "Wishlist",
                    function: () {
                      Navigator.pushNamed(context, Wishlist.routName);
                    },
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.recent,
                    text: "Recent",
                    function: () {
                      Navigator.pushNamed(context, ViewedRecently.routName);
                    },
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.address,
                    text: "Address",
                    function: () {},
                  ),
                  const Divider(thickness: 1),
                  const TitlesTextWidget(label: "Settings"),
                  SwitchListTile(
                    secondary: Image.asset(AssetsManager.theme, height: 30),
                    title: Text(
                      themeProvider.getIsDarkTheme ? "Dark mode" : "Light mode",
                    ),
                    value: themeProvider.getIsDarkTheme,
                    onChanged: (value) {
                      themeProvider.setDarkThem(themeValue: value);
                    },
                  ),
                  const Divider(thickness: 1),
                ],
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.login),
                label: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
