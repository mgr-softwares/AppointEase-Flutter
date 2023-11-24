import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors_theme.dart';
import 'onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return Scaffold(backgroundColor: ThemeColor.white, body: Container());
  }
}
