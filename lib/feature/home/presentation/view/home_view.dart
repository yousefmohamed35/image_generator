import 'package:flutter/material.dart';
import 'package:image_generation/core/styles/text_style.dart';
import 'widgets/custom_container.dart';
import 'widgets/custom_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIcon(),
            SizedBox(height: 20),
            Text("AI Image Generator", style: TextAppStyle.textStyle24),
            Text(
              'Transform your ideas into stunning image!',
              style: TextAppStyle.textStyle14,
            ),
            CustomContainer(),
          ],
        ),
      ),
    );
  }
}
