import 'package:appoint_ease/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors_theme.dart';
import 'welcome_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WelcomeController welcomeController = Get.find<WelcomeController>();
    return Scaffold(
        backgroundColor: ThemeColor.grey_200,
        body: Column(
          children: [
            Expanded(child: Container()),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: ThemeColor.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Column(children: [
                  SizedBox(
                    height: 24,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                          text: "Your",
                          style: TextStyle(
                            color: ThemeColor.black,
                          ),
                        ),
                        TextSpan(
                          text: " Ultimate Doctor",
                          style: TextStyle(
                            color: ThemeColor.primary,
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Appointment Booking App",
                    style: TextStyle(
                        color: ThemeColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Book appointments effortlessly and manage your health journey",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ThemeColor.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.createAccountPage);
                        },
                        child: Text("Let's get started"),
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
                      Get.toNamed(AppRoutes.signInPage);
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
                ]),
              ),
            )
          ],
        ));
  }
}
