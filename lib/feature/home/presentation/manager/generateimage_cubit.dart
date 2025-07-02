import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repo.dart';

part 'generateimage_state.dart';

class GenerateimageCubit extends Cubit<GenerateimageState> {
  final HomeRepo homeRepo;
  TextEditingController promptController = TextEditingController();
  GenerateimageCubit(this.homeRepo) : super(GenerateimageInitial());
  Future<void> generateImage({required String prompt}) async {
    try {
      emit(GenerateimageLoading());
      final image = await homeRepo.generateImage(prompt: prompt);
      emit(GenerateimageSuccess(image: image));
    } catch (e) {
      emit(GenerateimageError(message: e.toString()));
    }
  }
  void regenrate(){
    promptController.clear();
    emit(GenerateimageInitial());

  }
}
