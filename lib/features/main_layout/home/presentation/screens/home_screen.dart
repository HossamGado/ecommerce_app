import 'dart:async';

import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/features/main_layout/home/presentation/widgets/custom_ads_widget.dart';
import 'package:ecommerce_app/features/main_layout/home/presentation/widgets/custom_category_widget.dart';
import 'package:ecommerce_app/features/main_layout/home/presentation/widgets/custom_section_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late Timer timer;

  List<String> adsImages = [
    ImageAssets.carouselSlider1,
    ImageAssets.carouselSlider2,
    ImageAssets.carouselSlider3,
  ];

  @override
  void initState() {
    super.initState();
    startAdsImageSwitching();
  }

  void startAdsImageSwitching() {
    timer = Timer.periodic(const Duration(milliseconds: 2500), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % adsImages.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAdsWidget(
            adsImages: adsImages,
            timer: timer,
            currentIndex: currentIndex,
          ),
          Column(
            children: [
              CustomSectionBar(sectionName: "Categories", onPressed: () {}),
              SizedBox(
                height: 270.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return CustomCategoryWidget();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
