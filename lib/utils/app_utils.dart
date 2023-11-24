import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/colors_theme.dart';
import 'enums/snackbar_status.dart';

class AppUtils {
  static void launchURLInBrowser({required String url}) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  static void showSnackBar(String message,
      {String title = "Error",
      MessageStatus status = MessageStatus.NORMAL,
      String? mainButtonText,
      VoidCallback? onMainButtonPressed}) {
    Color backgroundColor;
    switch (status) {
      case MessageStatus.SUCCESS:
        backgroundColor = ThemeColor.green;
        break;
      case MessageStatus.ERROR:
        backgroundColor = ThemeColor.red;
        break;
      case MessageStatus.WARNING:
        backgroundColor = ThemeColor.orange;
        break;
      case MessageStatus.NORMAL:
      default:
        backgroundColor = ThemeColor.black;
        break;
    }

    Get.snackbar(
      title,
      message,
      borderRadius: 4,
      snackPosition: SnackPosition.BOTTOM,
      colorText: ThemeColor.white,
      backgroundColor: backgroundColor,
      mainButton: mainButtonText == null
          ? null
          : TextButton(
              onPressed: onMainButtonPressed ?? () {},
              child: Text(
                'OK',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ThemeColor.white),
              ),
            ),
    );
  }

  static String getNameInitials(String name) {
    List<String> names = name.split(" ");
    String initials = "";
    int numWords = names.length > 2 ? 2 : names.length;
    for (int i = 0; i < numWords; i++) {
      String initial = names[i][0].toUpperCase();
      initials += initial;
    }
    return initials;
  }
}
