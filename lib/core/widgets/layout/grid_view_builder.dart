import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/features/home/model/favourite_models.dart';
import 'package:nectar_olnine_grocery/features/home/model/poducts_model.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/item_cards.dart';


class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 250,
      ),
      itemCount: favourites.length,
      itemBuilder: (context, index) {
        var product = products[index];
        return ItemCards(product: product);
      },
    );
  }
}
