import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generation/feature/home/presentation/manager/generateimage_cubit.dart';

import '../../../../../constants.dart';
import '../../../../../core/styles/text_style.dart';

class DescreptorText extends StatelessWidget {
  const DescreptorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constants.primaryColor.withOpacity(0.088),
      ),
      child: Text(
        context.read<GenerateimageCubit>().promptController.text,
        style: TextAppStyle.textStyle12,
      ),
    );
  }
}
