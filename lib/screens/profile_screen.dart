import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/services/asses_manager.dart';
import 'package:e_commerce_app/widgets/app_name_text.dart';
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: AppNameText(),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TitlesTextWidget(
                label: "please login to have ultimate access",
              ),
            ),
          ),
          SizedBox(height: 20),
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
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 7),
                Column(
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
                TitlesTextWidget(label: "General"),
                CustomListTile(
                  imagePath: AssetsManager.orderSvg,
                  text: "All Orders",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.wishlistSvg,
                  text: "Wishlis",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.recent,
                  text: "Recent",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.address,
                  text: "Address",
                  function: () {},
                ),
                Divider(thickness: 1),
                TitlesTextWidget(label: "Setting"),
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
                Divider(thickness: 1),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.login),
              label: Text("login"),
            ),
          ),
        ],
      ),
    );
  }
}
