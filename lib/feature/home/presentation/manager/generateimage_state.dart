part of 'generateimage_cubit.dart';


abstract class GenerateimageState {}

class GenerateimageInitial extends GenerateimageState {}
class GenerateimageLoading extends GenerateimageState {}
class GenerateimageSuccess extends GenerateimageState {
  final Uint8List image;
  GenerateimageSuccess({required this.image});
}
class GenerateimageError extends GenerateimageState {
  final String message;
  GenerateimageError({required this.message});
}


