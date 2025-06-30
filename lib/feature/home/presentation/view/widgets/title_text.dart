import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/styles/text_style.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Constants.primaryColor, size: 18),
        SizedBox(width: 8),
        Text(title, style: TextAppStyle.textStyle18),
      ],
    );
  }
}
