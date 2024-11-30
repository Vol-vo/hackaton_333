import 'package:dart_mappable/dart_mappable.dart';
import 'package:hackaton_333/core/data/data.dart';
import 'package:hive/hive.dart';

part 'saved_feeds_model.mapper.dart';

@MappableClass()
class SavedFeedsModel with SavedFeedsModelMappable{

  final CurrentValidatorErrors errors;
  final List<bool> isAccepted;
  final String nameFiles;
  final DateTime date;

  SavedFeedsModel({
    required this.errors,
    required this.isAccepted,
    required this.nameFiles,
    required this.date,
  });

  static const fromMap = SavedFeedsModelMapper.fromMap;

  static const fromJson = SavedFeedsModelMapper.fromJson;

}