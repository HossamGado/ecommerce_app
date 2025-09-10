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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState>formKey=GlobalKey();
  final fullName=TextEditingController();
  final mobile=TextEditingController();
  final email=TextEditingController();
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
                  SizedBox(height: AppSize.s20.h),
                  BuildTextField(
                    controller: fullName,
                    backgroundColor: ColorManager.white,
                    label: "full Name",
                    hint: "enter your full name",
                  ),
                  const SizedBox(height: 15),
                  BuildTextField(
                    controller: mobile,
                    backgroundColor: ColorManager.white,
                    label: "Mobile Number",
                    hint: "enter your mobile no.",
                  ),
                  const SizedBox(height: 15),
                  BuildTextField(
                    controller: email,
                    backgroundColor: ColorManager.white,
                    label: "E-mail address",
                    hint: "enter your email address",
                  ),
                  const SizedBox(height: 15),
                  BuildTextField(
                    isObscured: true,
                    controller: password,
                    backgroundColor: ColorManager.white,
                    label: "Password",
                    hint: "enter your password",
                  ),
                  const SizedBox(height: 56),
                  CustomElevatedButton(
                    label: 'Sign Up',
                    backgroundColor: ColorManager.white,
                    textStyle: getSemiBoldStyle(
                      color: ColorManager.primary,
                      fontSize: AppSize.s20,
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
                        "Already have an account? ",
                        style: getMediumStyle(
                          color: ColorManager.white,
                        ).copyWith(fontSize: AppSize.s18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            Routes.signInRoute,
                                (route) => false,
                          );
                        },
                        child: Text(
                          "Login",
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
