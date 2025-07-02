import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generation/core/service/api_service.dart';
import 'package:image_generation/feature/home/data/repos/home_repo_impl.dart';
import 'package:image_generation/feature/home/presentation/manager/generateimage_cubit.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenerateimageCubit(HomeRepoImpl(ApiService(Dio()))),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: HomeViewBody(),
            ),
          ),
        ),
      ),
    );
  }
}
