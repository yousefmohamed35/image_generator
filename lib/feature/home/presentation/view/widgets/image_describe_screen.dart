import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generation/constants.dart';
import 'package:image_generation/feature/home/presentation/manager/generateimage_cubit.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';
import 'title_text.dart';

class ImageDescribeScreen extends StatelessWidget {
  const ImageDescribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prompt = context.read<GenerateimageCubit>().promptController;
    return Column(
      children: [
        TitleText(title: 'Descibe Your Vision', icon: Icons.edit),
        SizedBox(height: 20),
        CustomTextField(controller: prompt),
        SizedBox(height: 20),
        CustomButton(
          onPressed: () {
            context.read<GenerateimageCubit>().generateImage(
              prompt: prompt.text,
            );
          },
          title: 'Generate',
          icon: Icons.auto_awesome_rounded,
          color: Constants.primaryColor,
        ),
      ],
    );
  }
}
