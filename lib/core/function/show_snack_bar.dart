import 'package:flutter/material.dart';
import 'package:image_generation/constants.dart';
import 'package:image_generation/core/styles/text_style.dart';

void showSuccessMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message,style: TextAppStyle.textStyle16,),
      backgroundColor: Constants.primaryColor,
      duration: Duration(seconds: 2),
    ),
  );
}