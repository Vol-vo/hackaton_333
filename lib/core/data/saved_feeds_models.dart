import 'package:dart_mappable/dart_mappable.dart';
import 'package:hackaton_333/core/data/data.dart';

part 'saved_feeds_models.mapper.dart';

@MappableClass()
class SavedFeedsModels with SavedFeedsModelsMappable{
  final List<CurrentValidatorError> errors;
  final List<bool> isAccepted;
  final String nameFiles;
  final DateTime date;

  SavedFeedsModels({
    required this.errors,
    required this.isAccepted,
    required this.nameFiles,
    required this.date,
  });

  static const fromJson = SavedFeedsModelsMapper.fromMap;
}