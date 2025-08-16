import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/home/model/order_models.dart';

class ItemCards extends StatelessWidget {
  const ItemCards({
    super.key,
   required this.product
  });
final ProductModels product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.asset(product.image)),
            Text(product.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            Text("${product.quantity}, priceg"),
        SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${product.price } \$",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                FloatingActionButton(
                  elevation: 0,
                  
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.primaryColor,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
