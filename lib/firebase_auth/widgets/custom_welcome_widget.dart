import 'package:flutter/material.dart';
class CustomWelcomeWidget extends StatelessWidget {
  const CustomWelcomeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Image.asset("assets/images/route_logo.png"),
        SizedBox(height: 40),
        Text(
          "Welcome Back To Route",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Please sign in with your email",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
