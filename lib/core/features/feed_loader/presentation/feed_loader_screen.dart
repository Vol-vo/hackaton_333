import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton_333/core/features/feed_loader/bloc/bloc/feed_loader_bloc.dart';
import 'package:hackaton_333/core/styles/color.dart';
import 'package:hackaton_333/wrapper.dart';

class FeedLoaderScreen extends StatelessWidget {
  const FeedLoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Загрузчик фидов',
          style: TextStyle(
            color: UIColors.textColor,
          ),
        ),
        backgroundColor: UIColors.appBarColor,
      ),
      backgroundColor: UIColors.backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final feedLoaderBloc = context.read<FeedLoaderBloc>();
            feedLoaderBloc.add(PickFileAndSendFeedEvent());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          child: const Text(
            'Отправить фид',
            style: TextStyle(
              color: UIColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
