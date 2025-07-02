import 'dart:developer';
import 'dart:io';
import 'dart:math' hide log;
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/service/api_service.dart';
import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Uint8List> generateImage({required String prompt}) {
    final encodedPrompt = Uri.encodeComponent(prompt);
    final seed = Random().nextInt(10000);
    final fullPrompt = '$encodedPrompt?width=512&height=512&seed=$seed';

    return apiService.getImageBytes(prompt: fullPrompt);
  }

  @override
  Future<void> saveImage(Uint8List image) async {
    final directory = Directory('/storage/emulated/0/Download/ai');

    final fileName =
        'generated_image_${DateTime.now().millisecondsSinceEpoch}.png';
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(image);
    log("Image saved to ${file.path}");
  }

  @override
  Future<void> shareImage(Uint8List imageBytes) async {
    // Save image to temporary directory
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/shared_image.png');
    await file.writeAsBytes(imageBytes);

    // Share the image
    await Share.shareXFiles([XFile(file.path)], text: 'Check out this image!');
  }
}
