import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors_theme.dart';
import 'verify_code_controller.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeController verifyCodeController =
        Get.find<VerifyCodeController>();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: ThemeColor.black,
              )),
          backgroundColor: ThemeColor.white,
          elevation: 0,
        ),
        backgroundColor: ThemeColor.white,
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Text(
                    "Verify Code",
                    style: TextStyle(color: ThemeColor.black, fontSize: 24),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "Please enter the code we just sent to email ",
                              style: TextStyle(
                                color: ThemeColor.grey,
                              ),
                            ),
                            TextSpan(
                              text: "example@gmail.com",
                              style: TextStyle(
                                color: ThemeColor.accent,
                              ),
                            )
                          ])),
                  SizedBox(
                    height: 64,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      otpInputField(
                          verifyCodeController.firstOtpDigitController,
                          verifyCodeController.firstFocusNode),
                      otpInputField(
                          verifyCodeController.secondOtpDigitController,
                          verifyCodeController.secondFocusNode),
                      otpInputField(
                          verifyCodeController.thirdOtpDigitController,
                          verifyCodeController.thirdFocusNode),
                      otpInputField(
                          verifyCodeController.fourthOtpDigitController,
                          verifyCodeController.fourthFocusNode),
                    ],
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Text(
                    "Didn't receive the OTP?",
                    style: TextStyle(
                      color: ThemeColor.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("Resend code",
                        style: TextStyle(
                            color: ThemeColor.accent,
                            fontSize: 16,
                            decoration: TextDecoration.underline)),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Verify"),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          backgroundColor: ThemeColor.primary,
                        ),
                      )),
                ]))));
  }

  Container otpInputField(
      TextEditingController controller, FocusNode focusNode) {
    return Container(
      width: 44,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        style: TextStyle(color: ThemeColor.black, fontSize: 16),
        maxLength: 1,
        maxLines: 1,
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.isNotEmpty) {
            focusNode
                .nextFocus(); // Move focus to the next field when a digit is entered
          }
        },
        decoration: InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.all(12),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: ThemeColor.accent)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: ThemeColor.grey_400)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: ThemeColor.grey_400)),
        ),
        textInputAction: TextInputAction.next,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
