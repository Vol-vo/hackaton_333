import 'package:dart_mappable/dart_mappable.dart';

part 'lines.mapper.dart';

@MappableClass()
class Lines with LinesMappable {
  final List<String>? invalidLines;
  final List<String>? correctLines;

  Lines({
    this.invalidLines,
    this.correctLines,
  });
}
