import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/data/error_ids_to_fix.dart';
import 'package:hackaton_333/core/domain/service/api_feed.dart';

class FeedRepository {
  FeedRepository(this.service);

  ApiFeed service;

  Future<LoadFeedResponse> loadFeedFromDevice({
    required File file,
  }) async {
    return await service.loadFeedFromDevice(file);
  }

  Future<LoadFeedResponse> loadFeedFromUrl({
    required String url,
  }) async {
    return await service.loadFeedFromUrl(url);
  }

  // Future<File> loadCurrencyFeedOnDevice({required String workId}) async {
  //   return await service.loadCurrencyFeedOnDevice(workId);
  // }

  Future<void> loadCurrencyFeedOnCloud({
    required String workId,
    required String uploader,
    required String uploaderAuth,
  }) async {
    return await service.loadCurrencyFeedOnCloud(
      workId,
      uploader,
      uploaderAuth,
    );
  }

  Future<CurrentValidatorErrors> getErrors(String workId) async {
    return await service.getErrors(workId);
  }

  Future<void> loadUserAnswer(String workId, ErrorIdsToFix answer) async {
    return await service.loadUserAnswer(workId, answer, 'application/json');
  }
}
