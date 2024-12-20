import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton_333/app.dart';
import 'package:hackaton_333/core/domain/service/api_feed.dart';
import 'package:hackaton_333/core/domain/service/feed_repository.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_bloc.dart';

final dio = Dio(
  BaseOptions(
    connectTimeout: const Duration(minutes: 20),
    sendTimeout: const Duration(minutes: 20),
    // contentType: "application/json"
  ),
);

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedLoaderBloc>(
          create: (context) => FeedLoaderBloc(
            repository: FeedRepository(
              ApiFeed(
                dio,
              ),
            ),
          ),
        ),
      ],
      child: const App(),
    );
  }
}
