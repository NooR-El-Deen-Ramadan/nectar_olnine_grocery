import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/features/home/model/profile_list.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/profile_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      AppImages.profilePNG,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              
                              text: "Noor El Deen Ramadan",
                              style: TextStyle(
                                
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.darkColor,
                              ),
                            ),
                            WidgetSpan(
                              
                              alignment: PlaceholderAlignment.middle,
                              child: IconButton(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                onPressed: (){}, icon:Icon(Icons.edit)))
                          ],
                        ),
                      ),

                      Text(
                        "nooraldeinrmadan@gmail.com",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  itemCount:profileTiles.length,
                  separatorBuilder: (context, index) {
                    return Divider(height: 1);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    ProfileTile tile = profileTiles[index];
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: ProfileListTile(tile: tile),
                    );
                  },
                ),
              ),
              MainButton(buttonText: "Log Out", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
