import 'package:e_commerce_app/models/category_model.dart';
import 'package:e_commerce_app/services/asses_manager.dart';

class AppConsts {
  static const String productImageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhYw6YjljfJrrRYZ5kw5EEA0V6FQc4VqtpFQ&s";

  static List<String> banersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];

  static List<CategoryModel> categories = [
    CategoryModel(id: "Phones", image: AssetsManager.mobiles, name: "Phones"),
    CategoryModel(id: "Laptops", image: AssetsManager.pc, name: "Laptops"),
    CategoryModel(
      id: "Electronics",
      image: AssetsManager.electronics,
      name: "Electronics",
    ),
    CategoryModel(id: "Watches", image: AssetsManager.watch, name: "Watches"),
    CategoryModel(id: "Clothes", image: AssetsManager.fashion, name: "Clothes"),
    CategoryModel(id: "Shoes", image: AssetsManager.shoes, name: "Shoes"),
    CategoryModel(id: "", image: AssetsManager.book, name: "Books"),
    CategoryModel(
      id: "Cosmetics",
      image: AssetsManager.cosmetics,
      name: "Cosmetics",
    ),
  ];
}
