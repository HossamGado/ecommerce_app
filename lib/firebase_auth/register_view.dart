import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/firebase_auth/sign_in_view.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Image.asset("assets/images/route_logo.png"),
              SizedBox(height: 20),
              CustomTextField(hint: "enter your full name", label: "Full Name"),
              SizedBox(height: 32),
              CustomTextField(
                hint: "enter your mobile no.",
                label: "Mobile Number",
              ),
              SizedBox(height: 32),
              CustomTextField(
                hint: "enter your email address",
                label: "E-mail address",
              ),
              SizedBox(height: 32),
              CustomTextField(hint: "enter your password", label: "Password"),
              SizedBox(height: 40),
              CustomButton(textButton: "Sign up"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInView()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
