import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/core/utils/widgets/build_text_field.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_elevated_buttom.dart';
import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds_impl.dart';
import 'package:ecommerce_app/features/auth/data/repository/auth_repo_impl.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/signup_usecase.dart';
import 'package:ecommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        LoginUseCase(AuthRepoImpl(AuthRemoteDsImpl(ApiManager(),
        ),
        ),
        ),
        SignUpUseCase(AuthRepoImpl(AuthRemoteDsImpl(ApiManager(),
        ),
        ),
        ),
      ),
      child: BlocConsumer<AuthBloc, AuthLoginState>(
        listener: (context, state) {
          if (state.requestState == RequestState.success) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.mainRoute,
              (context) => false,
            );
          }
          if (state.requestState == RequestState.failure) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text(state.errorMessage ?? ""),
              ),
            );
          }
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
                          controller: emailController,
                          backgroundColor: ColorManager.white,
                          label: "User Name",
                          hint: "enter your name",
                        ),
                        const SizedBox(height: 30),
                        BuildTextField(
                          controller: passwordController,
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
                          textStyle: getSemiBoldStyle(
                            color: ColorManager.primary,
                            fontSize: AppSize.s20,
                          ),
                          onPressed: () {
                            BlocProvider.of<AuthBloc>(context).add(
                              LoginEvent(
                                emailController.text,
                                passwordController.text,
                              ),
                            );
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
                              "Don't have an account? ",
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
        },
      ),
    );
  }
}
