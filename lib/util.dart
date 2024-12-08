import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}

void showToast(String msg, String type) {
  Color backgroundColor;
  switch (type) {
    case 'success':
      backgroundColor = Colors.green;
      break;
    case 'error':
      backgroundColor = Colors.red;
      break;
    case 'warning':
      backgroundColor = Colors.orange;
      break;
    default:
      backgroundColor = Colors.grey;
  }
  try {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor,
        webBgColor: "#${backgroundColor.value.toRadixString(16).substring(2)}",
        textColor: Colors.white,
        fontSize: 16.0);
  } catch (e) {
    print("Error showing toast: $e");
  }
}
