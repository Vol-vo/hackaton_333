// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_ids_to_fix.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorIdsToFix _$ErrorIdsToFixFromJson(Map<String, dynamic> json) =>
    ErrorIdsToFix(
      errorIdsToFix: (json['errorIdsToFix'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ErrorIdsToFixToJson(ErrorIdsToFix instance) =>
    <String, dynamic>{
      'errorIdsToFix': instance.errorIdsToFix,
    };
