import 'package:flutter/material.dart';

import '../../constants.dart';
import '../styles/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color, this.onPressed,
  });
  final String title;
  final IconData icon;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Constants.whiteColor),
          SizedBox(width: 8),
          Text(title, style: TextAppStyle.textStyle16),
        ],
      ),
    );
  }
}
