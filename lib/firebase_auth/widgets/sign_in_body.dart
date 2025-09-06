import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/firebase_auth/widgets/check_have_account_message.dart';
import 'package:ecommerce_app/firebase_auth/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/firebase_auth/widgets/custom_text_field.dart';
import 'package:ecommerce_app/firebase_auth/widgets/custom_welcome_widget.dart';
import 'package:ecommerce_app/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'custom_button.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomWelcomeWidget(),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controller: email,
                    hint: "Enter your email",
                    label: "Email",
                  ),
                  const SizedBox(height: 32),
                  CustomTextFormField(
                    controller: password,
                    hint: "Enter your password",
                    label: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  CustomButton(text: "Forgot Password", onTap: () {}),
                  const SizedBox(height: 56),
                  CustomElevatedButton(
                    textButton: "Login",
                    onTap: onLoginClicked,
                  ),
                  const SizedBox(height: 24),
                  CheckHaveAccountMessage(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => HomeView()),
                      );
                    },
                    text: "Don't have an account?",
                    textButton: "Create Account",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );
  }

  Future<void> onLoginClicked() async {
    if (formKey.currentState!.validate()) {
      final navigator = Navigator.of(context);
      try {
        isLoading = true;
        setState(() {});
        await login();
        navigator.push(MaterialPageRoute(builder: (context) => HomeView()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          debugPrint('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          debugPrint('Wrong password provided for that user.');
        }
      } catch (e) {
        debugPrint(e.toString());
      }
      isLoading = false;
      setState(() {});
    }
  }
}
