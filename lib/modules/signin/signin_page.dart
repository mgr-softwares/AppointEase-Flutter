import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import '../../theme/colors_theme.dart';
import 'signin_controller.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.find<SignInController>();
    return Scaffold(
        backgroundColor: ThemeColor.white,
        body: Obx(() => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 64,
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(color: ThemeColor.black, fontSize: 24),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Hi! Welcome back, you've been missed",
                      style: TextStyle(
                        color: ThemeColor.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: signInController.emailTxtEdtCtr,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: ThemeColor.black, fontSize: 14),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 18,
                          color: ThemeColor.black,
                        ),
                        contentPadding: EdgeInsets.all(12),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: "example@gmail.com",
                        hintStyle:
                            TextStyle(fontSize: 14, color: ThemeColor.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeColor.darkGrey),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeColor.grey_300),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      textInputAction: TextInputAction.next,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: signInController.passwordTxtEdtCtr,
                      keyboardType: TextInputType.text,
                      obscureText: signInController.passwordInVisible.value,
                      style: TextStyle(color: ThemeColor.black, fontSize: 14),
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          size: 18,
                          color: ThemeColor.black,
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(
                              signInController.passwordInVisible.value
                                  ? Icons.visibility_off
                                  : Icons
                                      .visibility, //change icon based on boolean value
                            ),
                            onPressed: () {
                              signInController.passwordInVisible.value =
                                  !signInController.passwordInVisible.value;
                            }),
                        contentPadding: EdgeInsets.all(12),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: "Password",
                        hintStyle:
                            TextStyle(fontSize: 14, color: ThemeColor.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeColor.darkGrey),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeColor.grey_300),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      textInputAction: TextInputAction.next,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ThemeColor.accent,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Sign In"),
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            backgroundColor: ThemeColor.primary,
                          ),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.createAccountPage);
                        },
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                children: [
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: ThemeColor.darkGrey,
                                ),
                              ),
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                    color: ThemeColor.primary,
                                    decoration: TextDecoration.underline),
                              )
                            ]))),
                  ],
                ),
              ),
            )));
  }
}
