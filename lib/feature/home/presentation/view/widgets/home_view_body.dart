import 'package:flutter/material.dart';
import '../../../../../core/styles/text_style.dart';
import 'custom_icon.dart';
import 'generate_image_builder.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIcon(),
        SizedBox(height: 20),
        Text("AI Image Generator", style: TextAppStyle.textStyle24),
        Text(
          'Transform your ideas into stunning image!',
          style: TextAppStyle.textStyle14,
        ),
        SizedBox(height: 20),
        GenerateImageBuilder(),
      ],
    );
  }
}

