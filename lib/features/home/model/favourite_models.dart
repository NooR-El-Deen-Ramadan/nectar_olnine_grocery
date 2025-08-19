import 'package:nectar_olnine_grocery/core/constants/app_images.dart';

class FavouriteModel {
  final String image;
  final String name;
  final String price;
  final String quantity;

  FavouriteModel({
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  });
}

final List<FavouriteModel> favourites = [
  FavouriteModel(name: "Sprite Can", image: AppImages.spritePNG, price: "10", quantity: "350ml"),
  FavouriteModel(name: "Diet Coke", image: AppImages.cokePNG, price: "10", quantity: "400ml"),
  FavouriteModel(name: "Pepsi Can", image: AppImages.pepsiPNG, price: "10", quantity: "100ml"),
  FavouriteModel(name: "Coca Cola Can", image: AppImages.cocaColaPNG, price: "10", quantity: "350ml"),
];
