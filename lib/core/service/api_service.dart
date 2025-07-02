import 'dart:developer';
import 'dart:typed_data';
import 'package:dio/dio.dart';

class ApiService {
  final String url = 'https://image.pollinations.ai/prompt/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Uint8List> getImageBytes({required String prompt}) async {
    final response = await _dio.get(
      '$url$prompt',
      options: Options(responseType: ResponseType.bytes), 
    );

    log('Image downloaded: ${response.statusCode}');

    if (response.statusCode == 200 && response.data != null) {
      return Uint8List.fromList(response.data as List<int>);
    } else {
      throw Exception('Failed to fetch image');
    }
  }
}
