import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hackaton_333/core/data/dio.dart';
import 'package:meta/meta.dart';

part 'feed_loader_event.dart';

part 'feed_loader_state.dart';

class FeedLoaderBloc extends Bloc<FeedLoaderEvent, FeedLoaderState> {
  FeedLoaderBloc() : super(FeedLoaderInitial()) {
    on<PickFileAndSendFeedEvent>(onPickFileAndSendFeedEvent);
  }

  void onPickFileAndSendFeedEvent(event, emit) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
    );

    if (result == null) {
      return;
    }

    File file = File(
      result.files.single.path!,
    );

  FormData formData = FormData.fromMap({
    "file" : await MultipartFile.fromFile(file.path)
  });


    final response = await dio.post('feeds', data: formData);
    print(response.toString());
    final workId = response.data['workId'] ;

    Map<String, dynamic> responsee;

    while(true){
      responsee = await dio.get('feeds', queryParameters: {'workId' : workId}) as Map<String, dynamic>;
      if (responsee['isReady'] == true) break;
       else await Duration(seconds: 2);
    }

    print(responsee);

  }
}
