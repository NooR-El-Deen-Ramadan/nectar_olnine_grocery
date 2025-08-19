import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/features/home/model/poducts_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.productModel});
  final ProductModels productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.lightGreyColor),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pruductContainerImage(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productModel.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite,color: Colors.redAccent,)),
                    ],
                  ),
                  Text("${productModel.quantity} ,Price"),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyColor.withValues(alpha: 0.6),
                          ),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Icon(Icons.one_x_mobiledata),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      Spacer(),
                      Text(
                        "\$${productModel.price}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(thickness: 2),
                  Row(
                    children: [
                      Text(
                        "product Details",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  Text(productModel.description),
                                    SizedBox(height: 10,),

                  Divider(thickness: 2),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Nutritions",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      ),Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right))
                    ],
                  ),                  SizedBox(height: 10,),

                  Divider(thickness: 2),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  ),
                    SizedBox(height: 50,),

                  MainButton(
                    buttonText: "Add To Cart",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container pruductContainerImage() {
    return Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Image.asset(productModel.image,
            width: 60,
            height: 60,
            fit: BoxFit.contain,
            ),
          );
  }
}
