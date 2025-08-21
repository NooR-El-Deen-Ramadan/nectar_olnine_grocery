import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/home/model/profile_list.dart';

// ignore: must_be_immutable
class ProfileListTile extends StatelessWidget {
  ProfileListTile({super.key, required this.tile});

  ProfileTile tile;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Icon(tile.icon, size: 30, color: AppColors.primaryColor),
          SizedBox(width: 20),
          Text(
            tile.title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),

          Spacer(),

          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
