import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/generateimage_cubit.dart';
import 'custom_container.dart';
import 'generated_image_view.dart';
import 'image_describe_screen.dart';

class GenerateImageBuilder extends StatelessWidget {
  const GenerateImageBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateimageCubit, GenerateimageState>(
      builder: (context, state) {
        if (state is GenerateimageError) {
          return Text(state.message);
        }
        if (state is GenerateimageSuccess) {
          return CustomContainer(child: GeneratedImageView(image: state.image));
        }
        if (state is GenerateimageLoading) {
          return CircularProgressIndicator();
        }
        return CustomContainer(child: ImageDescribeScreen());
      },
    );
  }
}
