import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/cart_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return Divider(height: 1);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 120,
                      child: CartTile(),
                    ),
                  );
                },
              ),
            ),
            MainButton(buttonText: "Go To Checkout", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
