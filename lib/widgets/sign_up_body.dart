import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/firebase_auth/sign_in_view.dart';
import 'package:ecommerce_app/widgets/check_have_account_message.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
              CustomElevatedButton(textButton: "Sign up"),
              SizedBox(height: 15),
              CheckHaveAccountMessage(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignInView()),
                  );
                },
                text: "Already have an account",
                textButton: "Sign In",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
