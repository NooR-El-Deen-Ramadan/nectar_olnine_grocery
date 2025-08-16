import 'package:nectar_olnine_grocery/core/constants/app_images.dart';

class ProductModels {

final String image;
final String name;
final String price;
final String quantity;

  ProductModels({required this.quantity,required this.name,required this.image,required this.price});
}

List<ProductModels> products=[
    ProductModels(name: "Bell Red Pepper", image: AppImages.redPeperPNG, price: "10", quantity: "350ml"),

ProductModels(name: "Red Apple", image:AppImages.applePNG , price: "50",quantity: "5"),
ProductModels(name: "Organic Banana", image:AppImages.bananaPNG , price: "70",quantity: "7"),
ProductModels(name: "Egg Chicken Red", image:AppImages.eggPNG , price: "20",quantity: "2"),




];