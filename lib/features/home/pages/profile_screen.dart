import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';

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
                      AppImages.redPeperPNG,
                      width: 100,
                      height: 100,
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
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return Divider(height: 1);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          children: [
                            Icon(Icons.shopping_bag_outlined),
                            SizedBox(width: 20),
                            Text("orders",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                            
                            Spacer(),
                            
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              MainButton(buttonText: "Add All To Cart", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
