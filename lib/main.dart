import 'package:flutter/material.dart';
import 'package:image_generation/core/function/request_permission.dart';
import 'package:image_generation/image_generator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  requestPermission();
  runApp(ImageGenerator());
}
