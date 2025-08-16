import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.redPeperPNG),
        SizedBox(width: 30),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Red Pepper",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "1kg,price",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 10,),
    
                Text("1",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Text(
          "\$5",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
       
      ],
    );
  }
}
