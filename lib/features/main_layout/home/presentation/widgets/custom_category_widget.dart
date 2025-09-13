import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.r),
          child: Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              ImageAssets.categoryHomeImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          "men's fashion",
          style: getRegularStyle(color: ColorManager.darkBlue, fontSize: 14.sp),
        ),
      ],
    );
  }
}
