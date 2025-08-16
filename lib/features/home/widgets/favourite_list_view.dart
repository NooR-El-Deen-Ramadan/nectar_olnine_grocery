import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/features/home/model/favourite_models.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/favourite_tile.dart';

class FavouriteListView extends StatelessWidget {
  const FavouriteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: favourites.length,
        separatorBuilder: (context, index) {
          return Divider(height: 1);
        },
        itemBuilder: (BuildContext context, int index) {
          FavouriteModel favourite=favourites[index];
          return Padding(
            padding: const EdgeInsets.all(20),
            child: FavouriteTile(favourite:favourite),
          );
        },
      ),
    );
  }
}
