import 'package:ecommerce_app/core/utils/assets_manager.dart';
import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/font_manager.dart';
import 'package:ecommerce_app/core/utils/styles_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BuildTextField extends StatefulWidget {
  const BuildTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.isObscured = false,
    this.textInputType = TextInputType.text,
    this.backgroundColor,
    this.hintTextStyle,
    this.labelTextStyle,
    this.cursorColor,
    this.onTap,
    this.borderBackgroundColor,
    this.suffixIcon,
  });
  final TextEditingController? controller;
  final bool isObscured;
  final String? label;
  final String? hint;
  final TextInputType textInputType;
  final Color? backgroundColor;
  final Color? borderBackgroundColor;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final Color? cursorColor;
  final Widget? suffixIcon;
  final void Function()? onTap;
  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  late bool hidden = widget.isObscured;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null
            ? Padding(
          padding: const EdgeInsets.only(
              top: AppPadding.p2),
          child: Text(
            widget.label!,
            style: widget.labelTextStyle ??
                getMediumStyle(color: ColorManager.white)
                    .copyWith(fontSize: FontSize.s18.sp),
          ),
        )
            : const SizedBox(),
        SizedBox(height: AppSize.s18.h,),
        Container(
          margin: const EdgeInsets.only(top: AppMargin.m5),
          decoration: BoxDecoration(
              color: widget.backgroundColor ??
                  ColorManager.darkGrey.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(AppSize.s8),
              border: Border.all(color: widget.borderBackgroundColor ?? ColorManager.transparent )
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: TextFormField(
            validator: (data){
              if(data!.isEmpty){
                return "field is required";
              }
              return null;
          },
            controller: widget.controller,
            style: getMediumStyle(color: ColorManager.black)
                .copyWith(fontSize: FontSize.s18.sp),
            obscureText: hidden,
            keyboardType: widget.textInputType,
            obscuringCharacter: '*',
            cursorColor: widget.cursorColor ?? ColorManager.black,
            onTap: widget.onTap,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(AppPadding.p12),
              hintText: widget.hint,
              suffixIcon: widget.isObscured
                  ? IconButton(
                onPressed: () {
                  setState(
                        () {
                      hidden = !hidden;
                    },
                  );
                },
                iconSize: AppSize.s24,
                splashRadius: AppSize.s1,
                isSelected: !hidden,
                color: widget.cursorColor,
                selectedIcon: const Icon(Icons.remove_red_eye_rounded),
                icon: SvgPicture.asset(SvgAssets.eye),
              )
                  : widget.suffixIcon,
              hintStyle: widget.hintTextStyle ??
                  getRegularStyle(color: ColorManager.grey)
                      .copyWith(fontSize: 18.sp),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorStyle: TextStyle(
                fontSize: AppSize.s0,
                color: ColorManager.transparent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}