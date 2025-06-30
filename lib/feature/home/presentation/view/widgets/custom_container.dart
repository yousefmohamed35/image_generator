import 'package:flutter/material.dart';
import 'package:image_generation/feature/home/presentation/view/widgets/generated_image_view.dart';
import '../../../../../constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constants.primaryColor.withOpacity(0.1),
        border: Border.all(color: Constants.primaryColor, width: 1),
      ),
      child: GeneratedImageView(),
    );
  }
}
