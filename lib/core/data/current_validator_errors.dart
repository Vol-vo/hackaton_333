import 'package:dart_mappable/dart_mappable.dart';
import 'package:hackaton_333/core/data/data.dart';

part 'current_validator_errors.mapper.dart';

@MappableClass()
class CurrentValidatorErrors with CurrentValidatorErrorsMappable {
  final bool? isReady;
  final List<CurrentValidatorError>? currentValidatorErrors;

  CurrentValidatorErrors({
    this.isReady,
    this.currentValidatorErrors,
  });

  static const fromJson = CurrentValidatorErrorsMapper.fromMap;
}
