import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors_theme.dart';
import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.find<SplashController>();
    return Scaffold(
        backgroundColor: ThemeColor.primary,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "AppointEase",
                style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
