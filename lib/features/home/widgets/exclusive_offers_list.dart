import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/features/home/model/order_models.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/item_cards.dart';

class ExclusiveOffersList extends StatelessWidget {
  const ExclusiveOffersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        var product=products[index];
        return ItemCards(product: product,);
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 10);
      },
    );
  }
}
