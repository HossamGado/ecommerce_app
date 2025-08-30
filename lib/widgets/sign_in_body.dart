import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/firebase_auth/register_view.dart';
import 'package:ecommerce_app/widgets/check_have_account_message.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:ecommerce_app/widgets/custom_welcome_widget.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomWelcomeWidget(),
            SizedBox(height: 40),
            CustomTextField(hint: "enter your name", label: "User Name"),
            SizedBox(height: 32),
            CustomTextField(hint: "enter your password", label: "Password"),
            SizedBox(height: 16),
            CustomButton(text: "Forgot Password", onTap: () {}),
            SizedBox(height: 40),
            CustomElevatedButton(textButton: "Login"),
            SizedBox(height: 15),
            CheckHaveAccountMessage(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterView()),
                );
              },
              text: "Don't have an account?",
              textButton: "Create Account",
            ),
          ],
        ),
      ),
    );
  }
}
