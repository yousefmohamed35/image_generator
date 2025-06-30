import 'package:flutter/material.dart';
import 'package:image_generation/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';
import 'title_text.dart';

class ImageDescribeScreen extends StatelessWidget {
  const ImageDescribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(title: 'Descibe Your Vision', icon: Icons.edit),
        SizedBox(height: 20),
        CustomTextField(),
        SizedBox(height: 20),
        CustomButton(
          title: 'Generate',
          icon: Icons.auto_awesome_rounded,
          color: Constants.primaryColor,
        ),
      ],
    );
  }
}
