import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomSectionBar extends StatelessWidget {
  const CustomSectionBar({
    super.key,
    required this.sectionName,
    required this.onPressed,
  });

  final String sectionName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionName,
            style: getRegularStyle(
              color: ColorManager.darkBlue,
              fontSize: AppSize.s18,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "view all",
              style: getRegularStyle(color: ColorManager.darkBlue),
            ),
          ),
        ],
      ),
    );
  }
}
