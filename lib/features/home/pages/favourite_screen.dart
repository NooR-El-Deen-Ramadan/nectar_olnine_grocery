import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/features/home/pages/cart_screen.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/favourite_list_view.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favourites",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            FavouriteListView(),
            MainButton(
              buttonText: "Add All To Cart",
              onPressed: () {
                pushToWithoutReplacement(context, CartScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
