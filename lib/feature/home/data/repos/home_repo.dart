

import 'dart:typed_data';

abstract class HomeRepo {
  Future<Uint8List> generateImage({required String prompt});
}
