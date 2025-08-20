import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/home/model/poducts_model.dart';

class CartTile extends StatefulWidget {
  const CartTile({super.key, required this.product});
  final ProductModels product;

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(widget.product.image, width: 70, height: 70),
        SizedBox(width: 30),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              "1 kg,price",
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
                  elevation: 0,
                  onPressed: () {
                    setState(() {
                      if (widget.product.quantity > 0) {
                        widget.product.quantity--;
                      }
                    });
                  },
                  mini: true,
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 10),

                Text(
                  widget.product.quantity.toString(),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  elevation: 0,
                  onPressed: () {
                    setState(() {
                      widget.product.quantity++;
                    });
                  },
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
        Column(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
            Gap(25),
            Text(
              "\$ ${widget.product.price}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
