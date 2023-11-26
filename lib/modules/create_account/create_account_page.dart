import 'package:appoint_ease/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors_theme.dart';
import 'create_account_controller.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreateAccountController createAccountController =
        Get.find<CreateAccountController>();
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
                      "Create Account",
                      style: TextStyle(color: ThemeColor.black, fontSize: 24),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Fill your information below",
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
                          "Name",
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
                      controller: createAccountController.nameTxtEdtCtr,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: ThemeColor.black, fontSize: 14),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          size: 18,
                          color: ThemeColor.black,
                        ),
                        contentPadding: EdgeInsets.all(12),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: "John Doe",
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
                      controller: createAccountController.emailTxtEdtCtr,
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
                      controller: createAccountController.passwordTxtEdtCtr,
                      keyboardType: TextInputType.text,
                      obscureText:
                          createAccountController.passwordInVisible.value,
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
                              createAccountController.passwordInVisible.value
                                  ? Icons.visibility_off
                                  : Icons
                                      .visibility, //change icon based on boolean value
                            ),
                            onPressed: () {
                              createAccountController.passwordInVisible.value =
                                  !createAccountController
                                      .passwordInVisible.value;
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.verifyCodePage);
                          },
                          child: Text("Sign Up"),
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
                        Get.back();
                      },
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: TextStyle(
                                color: ThemeColor.darkGrey,
                              ),
                            ),
                            TextSpan(
                              text: "Sign in",
                              style: TextStyle(
                                  color: ThemeColor.primary,
                                  decoration: TextDecoration.underline),
                            )
                          ])),
                    ),
                  ],
                ),
              ),
            )));
  }
}
