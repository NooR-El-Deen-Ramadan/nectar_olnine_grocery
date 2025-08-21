import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/home/model/favourite_models.dart';

class FavouriteTile extends StatelessWidget {
  const FavouriteTile({super.key, required this.favourite});
  final FavouriteModel favourite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Image.asset(favourite.image),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                favourite.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "${favourite.quantity},price",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            "\$${favourite.price}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
