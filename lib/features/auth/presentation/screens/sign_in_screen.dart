import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/core/utils/widgets/build_text_field.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_elevated_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState>formKey=GlobalKey();
  final userName=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppPadding.p20),
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSize.s40.h),
                  Center(child: SvgPicture.asset(SvgAssets.routeLogo)),
                  SizedBox(height: AppSize.s40.h),
                  Text(
                    "Welcome Back To Route",
                    style: getSemiBoldStyle(
                      color: ColorManager.white,
                    ).copyWith(fontSize: AppSize.s24.sp),
                  ),
                  Text(
                    "Please sign in with your mail",
                    style: getLightStyle(
                      color: ColorManager.white,
                    ).copyWith(fontSize: AppSize.s16.sp),
                  ),
                  SizedBox(height: AppSize.s50.h),
                  BuildTextField(
                    controller: userName,
                    backgroundColor: ColorManager.white,
                    label: "User Name",
                    hint: "enter your name",
                  ),
                  const SizedBox(height: 30),
                  BuildTextField(
                    controller: password,
                    isObscured: true,
                    backgroundColor: ColorManager.white,
                    label: "Password",
                    hint: "enter your password",
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Password",
                          style: getRegularStyle(
                            color: ColorManager.white,
                          ).copyWith(fontSize: AppSize.s18.sp),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 56),
                  CustomElevatedButton(
                    label: 'Login',
                    backgroundColor: ColorManager.white,
                    textStyle: getBoldStyle(
                      color: ColorManager.primary,
                      fontSize: AppSize.s18,
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.mainRoute,
                        (route) => false,
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: getMediumStyle(
                          color: ColorManager.white,
                        ).copyWith(fontSize: AppSize.s18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            Routes.signUpRoute,
                            (route) => false,
                          );
                        },
                        child: Text(
                          "Create Account",
                          style: getMediumStyle(
                            color: ColorManager.white,
                          ).copyWith(fontSize: AppSize.s18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
