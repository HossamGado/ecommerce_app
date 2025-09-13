import 'dart:async';

import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdsWidget extends StatelessWidget {
  const CustomAdsWidget({
    super.key,
    required this.adsImages,
    required this.timer,
    required this.currentIndex,
  });

  final List<String> adsImages;
  final Timer timer;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1500),
            child: Image.asset(
              height: 210.h,
                width: double.infinity,
                adsImages[currentIndex]),
            key: ValueKey<int>(currentIndex),
          ),
          SizedBox(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: adsImages.map((image){
              int index=adsImages.indexOf(image);
              return Container(
                height: 8.h,
                width: 8.w,
                margin: EdgeInsets.symmetric(horizontal: 4.w,vertical: 12.h),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex==index?ColorManager.primary:Colors.grey,
                ),
              );

            }).toList(),
          ),),
          
        ],
      ),
    );
  }
}
