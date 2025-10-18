import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/core/utils/widgets/build_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSize.s12),
              SvgPicture.asset(
                SvgAssets.routeLogo,
                height: 30.h,
                width: 30.w,
                colorFilter: ColorFilter.mode(
                  ColorManager.primary,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: AppSize.s20.h),
              Text(
                "Welcome,Hossam",
                style: getMediumStyle(
                  color: ColorManager.primaryDark,
                  fontSize: AppSize.s18,
                ),
              ),
              SizedBox(height: AppSize.s8.h),
              Text(
                "hossamgado@gmail.com",
                style: getMediumStyle(
                  color: ColorManager.primaryDark.withOpacity(0.5),
                  fontSize: AppSize.s18,
                ),
              ),
              SizedBox(height: AppSize.s28.h),
              BuildTextField(
                hint: 'Enter your full name',
                hintTextStyle: getRegularStyle(
                  color: ColorManager.primary,
                ).copyWith(fontSize: 18.sp),
                label: "your full name",
                labelTextStyle: getMediumStyle(
                  color: ColorManager.primaryDark,
                  fontSize: AppSize.s18,
                ),
                backgroundColor: ColorManager.white,
                controller: TextEditingController(text: "Hossam Mahmoud Gado"),
                suffixIcon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s8),
                    child: SvgPicture.asset(SvgAssets.edit),
                  ),
                ),
                borderBackgroundColor: ColorManager.grey,
                cursorColor: ColorManager.primaryDark,
              ),
              SizedBox(height: AppSize.s16.h),
              BuildTextField(
                hint: 'Enter your email address',
                hintTextStyle: getRegularStyle(
                  color: ColorManager.primary,
                ).copyWith(fontSize: 18.sp),
                label: "your E-mail",
                labelTextStyle: getMediumStyle(
                  color: ColorManager.primaryDark,
                  fontSize: AppSize.s18,
                ),
                backgroundColor: ColorManager.white,
                controller: TextEditingController(
                  text: "hossammahmoudgado@gmail.com",
                ),
                suffixIcon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s8),
                    child: SvgPicture.asset(SvgAssets.edit),
                  ),
                ),
                borderBackgroundColor: ColorManager.grey,
                cursorColor: ColorManager.primaryDark,
              ),
              SizedBox(height: AppSize.s16.h),
              BuildTextField(
                isObscured: true,
                hint: 'Enter your password ',
                hintTextStyle: getRegularStyle(
                  color: ColorManager.primary,
                ).copyWith(fontSize: 18.sp),
                label: "your password",
                labelTextStyle: getMediumStyle(
                  color: ColorManager.primaryDark,
                  fontSize: AppSize.s18,
                ),
                backgroundColor: ColorManager.white,
                controller: TextEditingController(text: "123456789"),
                suffixIcon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s8),
                    child: SvgPicture.asset(SvgAssets.edit),
                  ),
                ),
                borderBackgroundColor: ColorManager.grey,
                cursorColor: ColorManager.primaryDark,
              ),
              SizedBox(height: AppSize.s16.h),
              BuildTextField(
                hint: 'Enter your Mobile',
                hintTextStyle: getRegularStyle(
                  color: ColorManager.primary,
                ).copyWith(fontSize: 18.sp),
                label: "your mobile number",
                labelTextStyle: getMediumStyle(
                  color: ColorManager.primaryDark,
                  fontSize: AppSize.s18,
                ),
                backgroundColor: ColorManager.white,
                controller: TextEditingController(text: "01069974762"),
                suffixIcon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s8),
                    child: SvgPicture.asset(SvgAssets.edit),
                  ),
                ),
                borderBackgroundColor: ColorManager.grey,
                cursorColor: ColorManager.primaryDark,
              ),
              SizedBox(height: AppSize.s16.h),
              BuildTextField(
                hint: 'Enter your address',
                hintTextStyle: getRegularStyle(
                  color: ColorManager.primary,
                ).copyWith(fontSize: 18.sp),
                label: "your address",
                labelTextStyle: getMediumStyle(
                  color: ColorManager.primaryDark,
                  fontSize: AppSize.s18,
                ),
                backgroundColor: ColorManager.white,
                controller: TextEditingController(text: "cairo,egypt"),
                suffixIcon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s8),
                    child: SvgPicture.asset(SvgAssets.edit),
                  ),
                ),
                borderBackgroundColor: ColorManager.grey,
                cursorColor: ColorManager.primaryDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
