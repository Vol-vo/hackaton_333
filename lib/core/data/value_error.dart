
import 'package:dart_mappable/dart_mappable.dart';

part 'value_error.mapper.dart';

@MappableClass()
class ValueError with ValueErrorMappable{
  final String? offerId;
  final String? tag;
  final String? invalidValue;
  final String? correctValue;

  ValueError({
    this.correctValue,
    this.invalidValue,
    this.offerId,
    this.tag,
  });
}