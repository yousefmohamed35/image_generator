import 'package:flutter/foundation.dart';

abstract class HomeRepo {
  Future<Uint8List> generateImage({required String prompt});
}
