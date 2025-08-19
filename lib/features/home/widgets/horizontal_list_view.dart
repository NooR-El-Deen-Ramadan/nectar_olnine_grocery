import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/home/model/poducts_model.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/item_cards.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    required this.listSubTitle,
    required this.listTitle,
    super.key,
  });
final String listTitle;
final String listSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              listTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                listSubTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
    
          child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        var product=products[index];
        return ItemCards(product: product,);
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 10);
      },
    ),
        ),
      ],
    );
  }
}
