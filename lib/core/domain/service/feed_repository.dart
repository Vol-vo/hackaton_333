import 'dart:io';

import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/domain/service/api_feed.dart';

class FeedRepository {
  FeedRepository(this.service);

  ApiFeed service;

  Future<LoadFeedResponse> loadFeed(File file) async {
    return await service.loadFeed(file);
  }

  Future<CurrentValidatorErrors> getErrors(String workId) async {
    return await service.getErrors(workId);
  }
}
