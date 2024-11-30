import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hackaton_333/core/data/dio.dart';
import 'package:hackaton_333/core/data/error_ids_to_fix.dart';
import 'package:hackaton_333/core/domain/service/feed_repository.dart';

import 'package:hackaton_333/core/features/feed_loader/bloc/feed_loader_state.dart';
import 'package:hackaton_333/core/resources/hive_boxes.dart';
import 'package:hackaton_333/core/resources/hive_keys.dart';
import 'package:hive/hive.dart';

part 'feed_loader_event.dart';

class FeedLoaderBloc extends Bloc<FeedLoaderEvent, FeedLoaderState> {
  final FeedRepository repository;

  FeedLoaderBloc({required this.repository}) : super(FeedLoaderState()) {
    on<PickFileAndSendFeedEvent>(onPickFileAndSendFeedEvent);
    on<LoadUserAnswerEvent>(onLoadUserAnswerEvent);
    on<LoadCurrencyFeedEvent>(onLoadCurrencyFeedOnDevice);
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

    final loadFeedresponse = await repository.loadFeedFromDevice(
      file: file,
    );

    final workIdBox = await Hive.openBox(HiveBoxes.workIdBox);
    workIdBox.put(HiveKeys.workId, loadFeedresponse.workId);

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
            workId: loadFeedresponse.workId,
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

  void onLoadUserAnswerEvent(event, emit) async {
    final typedEvent = event as LoadUserAnswerEvent;
    //emit(FeedLoadingState());

    await repository.loadUserAnswer(
      event.workId,
      ErrorIdsToFix(errorIdsToFix: typedEvent.userAnswer),
    );

    emit(FeedLoadAnswerSuccessState());

    //TODO: сохранить ответ пользователя в hive
  }

  void onLoadCurrencyFeedOnDevice(event, emit) async {
    final typedEvent = event as LoadCurrencyFeedEvent;
    final workIdBox = await Hive.openBox(HiveBoxes.workIdBox);
    
    final response = await dio.get(
      "feeds/file",
      queryParameters: {
        'workId': workIdBox.get(HiveKeys.workId),
      },
      options: Options(responseType: ResponseType.bytes),
    );

    await _saveFeedOnMemory(response.data);
  }

  Future<void> _saveFeedOnMemory(Uint8List content) async {
    await FilePicker.platform.saveFile(
      dialogTitle: 'Пожалуйста, назовите ваш файл: ',
      fileName: 'saved_feed.xml',
      bytes: content,
    );
  }
}
