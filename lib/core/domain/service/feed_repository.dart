import 'dart:io';

import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/domain/service/api_feed.dart';

class FeedRepository {
  FeedRepository(this.service);

  ApiFeed service;

  Future<LoadFeedResponse> loadFeed({
    required File file,
    required String uploader,
    required String uploaderAuth,
  }) async {
    return await service.loadFeed(
      file,
      uploader,
      uploaderAuth,
    );
  }

  Future<CurrentValidatorErrors> getErrors(String workId) async {
    return await service.getErrors(workId);
  }
}
