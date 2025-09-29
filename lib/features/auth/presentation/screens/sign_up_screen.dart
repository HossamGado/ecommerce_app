import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/core/utils/widgets/build_text_field.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_elevated_buttom.dart';
import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds_impl.dart';
import 'package:ecommerce_app/features/auth/data/repository/auth_repo_impl.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/signup_usecase.dart';
import 'package:ecommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthBloc(
            LoginUseCase(AuthRepoImpl(AuthRemoteDsImpl(ApiManager()))),
            SignUpUseCase(AuthRepoImpl(AuthRemoteDsImpl(ApiManager()))),
          ),
      child: BlocConsumer<AuthBloc, AuthLoginState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorManager.primary,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(AppPadding.p20),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppSize.s40.h),
                        Center(child: SvgPicture.asset(SvgAssets.routeLogo)),
                        SizedBox(height: AppSize.s20.h),
                        BuildTextField(
                          controller: fullNameController,
                          backgroundColor: ColorManager.white,
                          label: "full Name",
                          hint: "enter your full name",
                        ),
                        const SizedBox(height: 15),
                        BuildTextField(
                          controller: phoneController,
                          backgroundColor: ColorManager.white,
                          label: "Mobile Number",
                          hint: "enter your mobile no.",
                        ),
                        const SizedBox(height: 15),
                        BuildTextField(
                          controller: emailController,
                          backgroundColor: ColorManager.white,
                          label: "E-mail address",
                          hint: "enter your email address",
                        ),
                        const SizedBox(height: 15),
                        BuildTextField(
                          isObscured: true,
                          controller: passwordController,
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
                            SignUpEntity entity = SignUpEntity(
                                fullName: fullNameController.text,
                                phone: phoneController.text,
                                email: emailController.text,
                                password: passwordController.text,
                            );
                            BlocProvider.of<AuthBloc>(context).add(
                                SignUpEvent(entity));
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
        },
      ),
    );
  }
}
