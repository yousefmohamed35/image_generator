import 'package:flutter/material.dart';
import 'package:image_generation/constants.dart';
import 'package:image_generation/core/widgets/custom_button.dart';
import 'package:image_generation/feature/home/presentation/view/widgets/descreptor_text.dart';
import 'package:image_generation/feature/home/presentation/view/widgets/title_text.dart';

class GeneratedImageView extends StatelessWidget {
  const GeneratedImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(title: 'Generated Artwork', icon: Icons.image),
        SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          ),
        ),
        SizedBox(height: 10),
        DescreptorText(),
        SizedBox(height: 10),
        CustomButton(
          title: 'Regenerate',
          icon: Icons.refresh,
          color: Constants.primaryColor,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomButton(
                title: 'Save',
                icon: Icons.download,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: CustomButton(
                title: 'Share',
                icon: Icons.share,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
