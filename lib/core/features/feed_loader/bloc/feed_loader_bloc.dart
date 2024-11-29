import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/domain/service/feed_repository.dart';

import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_state.dart';
import 'package:hive/hive.dart';

part 'feed_loader_event.dart';

class FeedLoaderBloc extends Bloc<FeedLoaderEvent, FeedLoaderState> {
  final FeedRepository repository;

  FeedLoaderBloc({required this.repository}) : super(FeedLoaderState()) {
    on<PickFileAndSendFeedEvent>(onPickFileAndSendFeedEvent);

  }

  void onPickFileAndSendFeedEvent(event, emit) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result == null) {
      return;
    }

    emit(FeedLoadingState());

    File file = File(
      result.files.single.path!,
    );

    final loadFeedresponse = await repository.loadFeed(
      file: file,
      uploader: 'yandex',
      uploaderAuth: 'aboba',
    );

    await Future.delayed(
      const Duration(seconds: 5),
    );

    bool isReady = false;

    while (!isReady) {
      final getFeedResponse =
          await repository.getErrors(loadFeedresponse.workId!);

      isReady = getFeedResponse.isReady ?? false;

      if (isReady) {
        emit(
          FeedLoaderState(
            errors: getFeedResponse,
          ),
        );

        return;
      }

      await Future.delayed(
        const Duration(
          seconds: 2,
        ),
      );
    }
  }

  onPushChangesFeedEvent(event, emit) async {
    final box = await Hive.openBox('changesFeeds');

    final date = DateTime.now();

    final savesFeedsModels = SavedFeedsModels(
      errors: event.errors,
      isAccepted: event.choises,
      nameFiles: 'nameFiles', //TODO: Сделать с названиями файлов
      date: date,
    );



  }

}
