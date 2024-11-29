import 'package:dart_mappable/dart_mappable.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hive/hive.dart';

part 'saved_feeds_models.mapper.dart';

@HiveType(typeId: 1)
@MappableClass()
class SavedFeedsModels with SavedFeedsModelsMappable{

  @HiveField(0)
  final List<CurrentValidatorError> errors;
  @HiveField(1)
  final List<bool> isAccepted;
  @HiveField(2)
  final String nameFiles;
  @HiveField(3)
  final DateTime date;

  SavedFeedsModels({
    required this.errors,
    required this.isAccepted,
    required this.nameFiles,
    required this.date,
  });

  static const fromJson = SavedFeedsModelsMapper.fromMap;
}