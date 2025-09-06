import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/firebase_auth/views/sign_in_view.dart';
import 'package:ecommerce_app/firebase_auth/widgets/check_have_account_message.dart';
import 'package:ecommerce_app/firebase_auth/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/firebase_auth/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController fullName = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
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
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Image.asset("assets/images/route_logo.png"),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    controller: fullName,
                    onChanged: (data) {
                      fullName.text = data;
                    },
                    hint: "enter your full name",
                    label: "Full Name",
                  ),
                  SizedBox(height: 32),
                  CustomTextFormField(
                    controller: mobile,
                    onChanged: (data) {
                      mobile.text = data;
                    },
                    hint: "enter your mobile no.",
                    label: "Mobile Number",
                  ),
                  SizedBox(height: 32),
                  CustomTextFormField(
                    controller: emailAddress,
                    onChanged: (data) {
                      emailAddress.text = data;
                    },
                    hint: "enter your email address",
                    label: "E-mail address",
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
                  SizedBox(height: 40),
                  CustomElevatedButton(
                    textButton: "Sign up",
                    onTap: onSignUpClicked,
                  ),
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
        ),
      ),
    );
  }

  Future<void> register() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress.text,
      password: password.text,
    );
  }

  Future<void> onSignUpClicked() async {
    if (formKey.currentState!.validate()) {
      final navigator = Navigator.of(context);
      try {
        isLoading = true;
        setState(() {});
        await register();
        navigator.push(MaterialPageRoute(builder: (context) => SignInView()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          debugPrint('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          debugPrint('The account already exists for that email.');
        }
      } catch (e) {
        debugPrint(e.toString());
      }
      isLoading = false;
      setState(() {});
    }
  }
}
