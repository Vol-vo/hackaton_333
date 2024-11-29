import 'package:dart_mappable/dart_mappable.dart';

part 'current_validator_error.mapper.dart';

@MappableClass()
class CurrentValidatorError with CurrentValidatorErrorMappable {
  final String? message;
  final String? field;

  CurrentValidatorError({
    this.message,
    this.field,
  });

  static const fromJson = CurrentValidatorErrorMapper.fromMap;
}
