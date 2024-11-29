import 'package:dart_mappable/dart_mappable.dart';
import 'package:hackaton_333/core/data/data.dart';

part 'current_validator_error.mapper.dart';

@MappableClass()
class CurrentValidatorError with CurrentValidatorErrorMappable {
  final String? errorId;
  final String? message;
  final String? availableFix;
  final TagError? tagError;
  final ValueError? valueError;
  final Lines? lines;

  CurrentValidatorError({
    this.message,
    this.availableFix,
    this.errorId,
    this.tagError,
    this.valueError,
    this.lines,
  });

  static const fromJson = CurrentValidatorErrorMapper.fromMap;
}
