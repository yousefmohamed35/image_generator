import 'package:flutter/material.dart';

import 'feature/home/presentation/view/home_view.dart';

class ImageGenerator extends StatelessWidget {
  const ImageGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
    );
  }
}