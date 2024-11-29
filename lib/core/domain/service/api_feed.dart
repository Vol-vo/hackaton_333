import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:retrofit/retrofit.dart';

part 'api_feed.g.dart';

@RestApi(baseUrl: 'http://192.168.0.101:8080/')
abstract class ApiFeed {
  factory ApiFeed(Dio dio, {String baseUrl}) = _ApiFeed;

  @POST("feeds")
  Future<LoadFeedResponse> loadFeed(
    @Part() File file,
    @Query('uploader') String uploader,
    @Query('uploaderAuth') String uploaderAuth,
  );

  @GET("feeds")
  Future<CurrentValidatorErrors> getErrors(@Query('workId') String workId);
}
