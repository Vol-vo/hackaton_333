import 'package:dart_mappable/dart_mappable.dart';

part 'current_validator_error.mapper.dart';

@MappableClass()
class CurrentValidatorError with CurrentValidatorErrorMappable {
  final String? message;
  final String? availableFix;

  CurrentValidatorError({
    this.message,
    this.availableFix,
  });

  static const fromJson = CurrentValidatorErrorMapper.fromMap;
}
