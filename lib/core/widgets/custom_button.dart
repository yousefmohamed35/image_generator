import 'package:flutter/material.dart';

import '../../constants.dart';
import '../styles/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Constants.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.auto_awesome_rounded, color: Constants.whiteColor),
          SizedBox(width: 8),
          Text("Generate", style: TextAppStyle.textStyle16),
        ],
      ),
    );
  }
}
