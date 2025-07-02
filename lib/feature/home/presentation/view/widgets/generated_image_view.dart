import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generation/constants.dart';
import 'package:image_generation/core/widgets/custom_button.dart';
import 'package:image_generation/feature/home/presentation/view/widgets/descreptor_text.dart';
import 'package:image_generation/feature/home/presentation/view/widgets/title_text.dart';

import '../../manager/generateimage_cubit.dart';

class GeneratedImageView extends StatelessWidget {
  const GeneratedImageView({super.key, required this.image});
  final Uint8List image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(title: 'Generated Artwork', icon: Icons.image),
        SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.memory(image),
        ),
        SizedBox(height: 10),
        DescreptorText(),
        SizedBox(height: 10),
        CustomButton(
          onPressed: () {
            context.read<GenerateimageCubit>().regenrate();
          },
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
                onPressed: () async {
                  await context.read<GenerateimageCubit>().saveImage(image);
                },
                title: 'Save',
                icon: Icons.download,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: CustomButton(
                onPressed: () {},
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
