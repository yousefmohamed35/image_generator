import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
final TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 4,
      decoration: InputDecoration(
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),

        fillColor: Colors.white,

        filled: true,
        hintText: 'Enter text here',
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: Constants.primaryColor.withOpacity(0.3),
        width: 1,
      ),
    );
  }
}
