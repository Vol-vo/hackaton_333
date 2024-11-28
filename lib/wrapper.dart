import 'package:flutter/material.dart';
import 'package:hackaton_333/core/features/feed_loader/presentation/feed_loader_screen.dart';

class Wrapper extends StatelessWidget{
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedLoaderScreen();
    // return MultiBlocProvider(providers: [
    //   // BlocProvider<SendAndLoadingFileBloc>( оставил для примера
    //   //     create: (context) => SendAndLoadingFileBloc()),

    // ], child: const MyHomePage());
  }
}