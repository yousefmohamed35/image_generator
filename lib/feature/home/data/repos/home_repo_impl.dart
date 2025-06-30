import 'dart:math';
import 'dart:typed_data';

import '../../../../core/service/api_service.dart';
import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Uint8List> generateImage({required String prompt}) {
    var response = apiService.get(
      prompt: '$prompt?width=512&height=512&based=${Random().nextInt(10000)}',
    );
    return response.then((value) => value.data);
  }
}
