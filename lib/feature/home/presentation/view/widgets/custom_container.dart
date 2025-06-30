import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/styles/text_style.dart';
import 'custom_text_field.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Constants.primaryColor.withOpacity(0.1),
        border: Border.all(color: Constants.primaryColor, width: 1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.edit, color: Constants.primaryColor),
              Text("Describe Your Vision", style: TextAppStyle.textStyle18),
            ],
          ),
          CustomTextField(),
        ],
      ),
    );
  }

  
}

