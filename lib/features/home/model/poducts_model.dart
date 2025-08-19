// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';

class ProductModels {
  final String image;
  final String name;
  final String price;
  final String quantity;
  final String description;

  ProductModels({
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
    required this.description,
  });
}

List<ProductModels> products = [
  ProductModels(
    name: "Bell Red Pepper",
    image: AppImages.redPeperPNG,
    price: "10",
    quantity: "10",
    description:
        'Bell Red Peper are nutritious. peper may be good for weight loss. peper may be good for your heart.',
  ),
  ProductModels(
    name: "Red Apple",
    image: AppImages.applePNG,
    price: "50",
    quantity: "5",
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart.',
  ),
  ProductModels(
    name: "Organic Banana",
    image: AppImages.bananaPNG,
    price: "70",
    quantity: "7",
    description:
        'Banana are nutritious. Banana may be good for weight loss. banana may be good for your heart.',
  ),
  ProductModels(
    name: "Egg Chicken Red",
    image: AppImages.eggPNG,
    price: "20",
    quantity: "2",
    description:
        'eggs are nutritious. eggs may be good for weight loss. eggs may be good for your heart.',
  ),
];
