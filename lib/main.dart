import 'package:e_commerce_app/consts/theme_data.dart';
import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/root_screen.dart';
import 'package:e_commerce_app/screens/inner_screns/products_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ThemeProvider();
          },
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Shop Smart AR",
            theme: Styles.themeData(
              isDarkthem: themeProvider.getIsDarkTheme,
              context: context,
            ),
            home: RootScreen(),
            routes: {
              ProductsDetails.routeName: (context) => const ProductsDetails(),
            },
          );
        },
      ),
    );
  }
}
