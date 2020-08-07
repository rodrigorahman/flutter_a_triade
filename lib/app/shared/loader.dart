import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loader {
  static bool openLoader = false;

  static Future<void> showLoader(BuildContext context) async {
    if (!openLoader) {
      openLoader = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }

  static void hideLoader(BuildContext context) {
    if (openLoader) {
      openLoader = false;
      Navigator.of(context).pop();
    }
  }
}
