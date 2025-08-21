import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/home/pages/cart_screen.dart';
import 'package:nectar_olnine_grocery/features/home/pages/favourite_screen.dart';
import 'package:nectar_olnine_grocery/features/home/pages/home_screen.dart';
import 'package:nectar_olnine_grocery/features/home/pages/profile_screen.dart';
import 'package:nectar_olnine_grocery/features/home/pages/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withValues(alpha: 0.3),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          selectedItemColor: AppColors.primaryColor,
          elevation: 0,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppImages.homeNavIconSVG,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(AppImages.homeNavIconSVG),
              label: "Home",
              
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.searchNavIconSVG,
                colorFilter: ColorFilter.mode(
                  AppColors.darkColor,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                AppImages.searchNavIconSVG,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: "Search",
            ),


            BottomNavigationBarItem(
              
              icon:  SvgPicture.asset(AppImages.cartNavIconSVG, colorFilter: ColorFilter.mode(
                AppColors.darkColor,
                BlendMode.srcIn,
              )),
              label: "Cart",
              
              activeIcon: 
                SvgPicture.asset(AppImages.cartNavIconSVG,
              ),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: AppColors.darkColor),
              label: "Favourite",
              
              activeIcon: Icon(
                Icons.favorite_border,
                color: AppColors.primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.userNavIconSVG,
                colorFilter: ColorFilter.mode(
                  AppColors.darkColor,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                AppImages.userNavIconSVG,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
