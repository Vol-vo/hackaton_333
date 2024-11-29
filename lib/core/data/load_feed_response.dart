import 'package:dart_mappable/dart_mappable.dart';

part 'load_feed_response.mapper.dart';

@MappableClass()
class LoadFeedResponse with LoadFeedResponseMappable {
  const LoadFeedResponse({
    this.workId,
  });

  final String? workId;

  static const fromJson = LoadFeedResponseMapper.fromMap;
}
