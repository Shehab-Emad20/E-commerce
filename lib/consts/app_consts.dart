import 'package:e_commerce_app/models/category_model.dart';
import 'package:e_commerce_app/services/asses_manager.dart';

class AppConsts {
  static const String productImageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhYw6YjljfJrrRYZ5kw5EEA0V6FQc4VqtpFQ&s";

 static List<String> banersImages = [AssetsManager.banner1, AssetsManager.banner2];


 static List<CategoryModel> categories = [
    CategoryModel(
        id: AssetsManager.mobiles, image: AssetsManager.mobiles, name: "Mobiles"),
    CategoryModel(
        id: AssetsManager.electronics, image: AssetsManager.electronics, name: "Electronics"),
    CategoryModel(
        id: AssetsManager.cosmetics, image: AssetsManager.cosmetics, name: "Cosmetics"),
    CategoryModel(
        id: AssetsManager.shoes, image: AssetsManager.shoes, name: "Shoes"),
    
 ];
  
}
