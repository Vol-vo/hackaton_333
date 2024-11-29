
import 'package:dart_mappable/dart_mappable.dart';
part 'line.mapper.dart';

@MappableClass()
class Line with LineMappable{
  final String? line;
  final bool? isColored;

  Line({
    this.line,
    this.isColored,
});
}