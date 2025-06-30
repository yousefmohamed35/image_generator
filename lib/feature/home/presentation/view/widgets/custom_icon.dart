import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.auto_awesome_rounded,
      size: 60,
      color: Constants.primaryColor,
    );
  }
}
