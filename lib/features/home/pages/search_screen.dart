import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/inputs/custom_text_field.dart';
import 'package:nectar_olnine_grocery/features/home/model/category_model.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find Products",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              prefixIcon: Icon(Icons.search),
              hintText: "Search Store",
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 250,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  var category = categories[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyColor),
                      borderRadius: BorderRadius.circular(20),
                      color: category.cardColor,
                    ),
                    width: 170,
                    height: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(category.image),
                          SizedBox(height: 20),
                          Text(
                            category.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
