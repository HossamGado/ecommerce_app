import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/views/account_view.dart';
import 'package:ecommerce_app/views/categories_men_view.dart';
import 'package:ecommerce_app/views/home_view.dart';
import 'package:ecommerce_app/views/wishlsit_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    HomeView(),
    CategoriesMenView(),
    WishlsitView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ImageIcon(
                AssetImage("assets/images/home_icon.png"),
              ),
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/categories_icon.png"),
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/favourite_icon.png"),
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/account_icon.png"),
            ),
            label: " ",
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset("assets/images/route_text.png"),
      ),
      body: tabs[selectedIndex]
    );
  }
}
