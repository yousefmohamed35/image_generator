import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/function/show_snack_bar.dart';
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

  void regenrate() {
    promptController.clear();

    emit(GenerateimageInitial());
  }

  Future<void> saveImage(Uint8List image, BuildContext context) async {
    try {
      await homeRepo.saveImage(image);
      // ignore: use_build_context_synchronously
      showSuccessMessage(context, 'Image saved successfully');
    } on Exception catch (e) {
      // ignore: use_build_context_synchronously
      showSuccessMessage(context, 'Image not saved $e');
    }
  }

  Future<void> shareImage(Uint8List image, BuildContext context) async {
    try {
      await homeRepo.shareImage(image);
      // ignore: use_build_context_synchronously
      showSuccessMessage(context, 'Image shared successfully');
    } on Exception catch (e) {
      // ignore: use_build_context_synchronously
      showSuccessMessage(context, 'Image not shared $e');
      log(e.toString());
    }
  }
}
