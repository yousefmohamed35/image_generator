import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/styles/text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';

class ImageDescribeScreen extends StatelessWidget {
  const ImageDescribeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.edit, color: Constants.primaryColor),
            SizedBox(width: 8),
            Text("Describe Your Vision", style: TextAppStyle.textStyle18),
          ],
        ),
        SizedBox(height: 20),
        CustomTextField(),
        SizedBox(height: 20),
        CustomButton(),
      ],
    );
  }
}
