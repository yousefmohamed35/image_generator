

import 'dart:typed_data';

abstract class HomeRepo {
  Future<Uint8List> generateImage({required String prompt});
  Future<void> saveImage(Uint8List image);
  Future<void> shareImage(Uint8List image);
}
