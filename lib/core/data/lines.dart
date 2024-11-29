import 'package:dart_mappable/dart_mappable.dart';

import 'line.dart';

part 'lines.mapper.dart';

@MappableClass()
class Lines with LinesMappable {
  final List<Line>? invalidLines;
  final List<Line>? correctLines;

  Lines({
    this.invalidLines,
    this.correctLines,
  });
}
