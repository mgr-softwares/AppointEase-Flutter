import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final emailTxtEdtCtr = TextEditingController();
  final passwordTxtEdtCtr = TextEditingController();

  var passwordInVisible = true.obs;
}
