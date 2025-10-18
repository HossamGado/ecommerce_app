import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/main_layout/categories/presentation/screens/categories_screen.dart';
import 'package:ecommerce_app/features/main_layout/favourite/presentation/screens/favourite_screen.dart';
import 'package:ecommerce_app/features/main_layout/home/presentation/screens/home_screen.dart';
import 'package:ecommerce_app/features/main_layout/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeScreen(),
    CategoriesScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentIndex==3?null: const CustomAppBar(),
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Container(
          color: ColorManager.primary,
          child: SafeArea(
            top: false,
            child: BottomNavigationBar(
              elevation: 0,
              onTap: (value) => changeSelectedIndex(value),
              currentIndex: currentIndex,
              backgroundColor: ColorManager.transparent,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: ColorManager.primary,
              unselectedItemColor: ColorManager.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                CustomBottomNavBarItem("Home", IconsAssets.icHome),
                CustomBottomNavBarItem("Category", IconsAssets.icCategory),
                CustomBottomNavBarItem("WishList", IconsAssets.icWithList),
                CustomBottomNavBarItem("Profile", IconsAssets.icProfile),
              ],
            ),
          ),
        ),
      ),

      body: tabs[currentIndex],
    );
  }

  changeSelectedIndex(int selectedIndex) {
    setState(() {
      currentIndex = selectedIndex;
    });
  }
}

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  String iconPath;
  String title;

  CustomBottomNavBarItem(this.title, this.iconPath)
    : super(
        label: title,
        icon: ImageIcon(AssetImage(iconPath), color: ColorManager.white),
        activeIcon: CircleAvatar(
          backgroundColor: ColorManager.white,
          child: ImageIcon(AssetImage(iconPath), color: ColorManager.primary),
        ),
      );
}
