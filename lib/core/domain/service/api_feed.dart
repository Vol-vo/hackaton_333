import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hackaton_333/core/data/error_ids_to_fix.dart';
import 'package:retrofit/retrofit.dart';

part 'api_feed.g.dart';

@RestApi(baseUrl: 'http://192.168.24.248:8080/')
abstract class ApiFeed {
  factory ApiFeed(Dio dio, {String baseUrl}) = _ApiFeed;

  @POST("feeds")
  Future<LoadFeedResponse> loadFeedFromDevice(
    @Part() File file,
  );

  @POST("feeds")
  Future<LoadFeedResponse> loadFeedFromUrl(
    @Query('url') String url,
  );

  // @GET('feeds/file')
  // Future<File> loadCurrencyFeedOnDevice(
  //   @Query('workId') String workId,
  // );

  @GET('feeds/file')
  Future<void> loadCurrencyFeedOnCloud(
    @Query('workId') String workId,
    @Query('uploader') String uploader,
    @Query('uploaderAuth') String uploaderAuth,
  );

  @GET("feeds")
  Future<CurrentValidatorErrors> getErrors(@Query('workId') String workId);

  @POST("feeds/correct")
  Future<void> loadUserAnswer(
    @Query('workId') String workId,
    @Body() ErrorIdsToFix errorIdsToFix,
    @Header('Content-Type') String contentType,
  );
}

//192.168.0.10