import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/firebase_auth/register_view.dart';
import 'package:ecommerce_app/views/home_view.dart';
import 'package:ecommerce_app/widgets/check_have_account_message.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:ecommerce_app/widgets/custom_welcome_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInBody extends StatefulWidget {
  SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomWelcomeWidget(),
                SizedBox(height: 40),
                CustomTextFormField(
                  controller: userName,
                  onChanged: (data) {
                    userName.text = data;
                  },
                  hint: "enter your name",
                  label: "User Name",
                ),
                SizedBox(height: 32),
                CustomTextFormField(
                  controller: password,
                  onChanged: (data) {
                    password.text = data;
                  },
                  hint: "enter your password",
                  label: "Password",
                ),
                SizedBox(height: 16),
                CustomButton(text: "Forgot Password", onTap: () {}),
                SizedBox(height: 40),
                CustomElevatedButton(
                  textButton: "Login",
                  onTap: onLoginClicked,
                ),
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
        ),
      ),
    );
  }

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: userName.text,
            password: password.text,
          );
    }
  }

  Future<void> onLoginClicked() async {
    if (formKey.currentState!.validate()) {
      try {
        isLoading = true;
        setState(() {});
        await login();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
      isLoading = false;
      setState(() {});
    }
  }
}
