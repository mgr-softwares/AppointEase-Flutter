import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  final nameTxtEdtCtr = TextEditingController();
  final emailTxtEdtCtr = TextEditingController();
  final passwordTxtEdtCtr = TextEditingController();

  var passwordInVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
