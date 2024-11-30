import 'package:json_annotation/json_annotation.dart';

part 'error_ids_to_fix.g.dart';

@JsonSerializable()
class ErrorIdsToFix {
  final List<String> errorIdsToFix;

  const ErrorIdsToFix({
    required this.errorIdsToFix,
  });

  factory ErrorIdsToFix.fromJson(Map<String, dynamic> json) => _$ErrorIdsToFixFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorIdsToFixToJson(this);
}