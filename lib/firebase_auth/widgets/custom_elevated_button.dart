import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.textButton, required this.onTap});
  final String textButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(12),
              )
          ),
          onPressed: onTap, child: Text(textButton,style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 20
      ),)),
    );
  }
}
