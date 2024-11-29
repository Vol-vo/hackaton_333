import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hackaton_333/core/domain/service/feed_repository.dart';

import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_state.dart';

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

    final loadFeedresponse = await repository.loadFeed(file);

    await Future.delayed(Duration(seconds: 2));

    final getFeedResponse =
        await repository.getErrors(loadFeedresponse.workId!);

    emit(
      FeedLoaderState(
        errors: getFeedResponse,
      ),
    );
  }
}
