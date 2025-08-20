import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/features/home/model/poducts_model.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/buttom_sheet_tile.dart';
import 'package:nectar_olnine_grocery/features/home/widgets/cart_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        shadowColor: AppColors.lightGreyColor,
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
                itemCount: products.length,
                separatorBuilder: (context, index) {
                  return Divider(height: 1);
                },
                itemBuilder: (BuildContext context, int index) {
                  var product = products[index];
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 120,
                      child: CartTile(product: product),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 370,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 470,

                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Checkout",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Gap(10),
                              Divider(),
                              ButtomSheetTile(
                                leadingText: "Delivery",
                                trailingWidget: Text("Select Method",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Divider(),
                              ButtomSheetTile(
                                leadingText: "Payment Method",
                                trailingWidget: Image.asset(
                                  AppImages.visaCartPNG,
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              Divider(),
                              ButtomSheetTile(
                                leadingText: "Promo Code",
                                trailingWidget: Text("Apply",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Divider(),
                              ButtomSheetTile(
                                leadingText: "Total",
                                trailingWidget: Text("250\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Divider(),
                              Expanded(
                                child: Text(
                                  "By placing an order you agree to our Terms And Conditions",

                                  style: TextStyle(color: AppColors.greyColor, fontSize: 14,fontWeight: FontWeight.w400),
                                ),
                              ),
                              MainButton(buttonText:"Place Order", onPressed: (){})
                              
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Go To Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(50),
                    Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(113, 14, 126, 18),
                        border: Border.all(
                          color: AppColors.greyColor.withValues(alpha: 0.6),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "250\$",
                        style: TextStyle(color: AppColors.lightGreyColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
