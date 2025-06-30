import 'package:dio/dio.dart';

class ApiService {
  final String url = 'https://image.pollinations.ai/prompt/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> get({required String prompt}) async => await _dio.get(url + prompt);
  
}
