import 'package:flutter/material.dart';
import 'package:image_generation/image_generator.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
   final status = await Permission.storage.request();
  if (!status.isGranted) {
    throw Exception('Storage permission not granted');
  }
  runApp(ImageGenerator());
}
