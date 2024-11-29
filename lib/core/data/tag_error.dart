
import 'package:dart_mappable/dart_mappable.dart';

part 'tag_error.mapper.dart';

@MappableClass()
class TagError with TagErrorMappable{
  final String? offerId;
  final String? invalidTag;
  final String? correctTag;

  const TagError({
    this.offerId,
    this.correctTag,
    this.invalidTag,
  });
}