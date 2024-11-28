import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/bloc/feed_loader_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/presentation/feed_loader_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // return FeedLoaderScreen();
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedLoaderBloc>(
          create: (context) => FeedLoaderBloc(),
        ),
      ],
      child: const FeedLoaderScreen(),
    );
  }
}
