import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(12),
              )
          ),
          onPressed: () {}, child: Text("Login",style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 20
      ),)),
    );
  }
}
