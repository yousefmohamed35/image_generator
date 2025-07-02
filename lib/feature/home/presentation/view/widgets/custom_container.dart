import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constants.primaryColor.withOpacity(0.1),
        border: Border.all(color: Constants.primaryColor, width: 1),
      ),
      child:child,
    );
  }
}
