import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meta/meta.dart';

part 'feed_loader_event.dart';

part 'feed_loader_state.dart';

class FeedLoaderBloc extends Bloc<FeedLoaderEvent, FeedLoaderState> {
  FeedLoaderBloc() : super(FeedLoaderInitial()) {
    on<PickFileAndSendFeedEvent>(onPickFileAndSendFeedEvent);
  }

  void onPickFileAndSendFeedEvent(event, emit) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
    );

    if (result == null) {
      return;
    }

    File file = File(
      result.files.single.path!,
    );
  }
}
