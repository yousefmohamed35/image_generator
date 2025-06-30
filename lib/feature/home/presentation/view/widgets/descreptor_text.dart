import 'package:flutter/material.dart';

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
      child: Text('kdjjdnf ekfhejkf efwejkf', style: TextAppStyle.textStyle12),
    );
  }
}
