// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'saved_feeds_models.dart';

class SavedFeedsModelsMapper extends ClassMapperBase<SavedFeedsModels> {
  SavedFeedsModelsMapper._();

  static SavedFeedsModelsMapper? _instance;
  static SavedFeedsModelsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SavedFeedsModelsMapper._());
      CurrentValidatorErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SavedFeedsModels';

  static List<CurrentValidatorError> _$errors(SavedFeedsModels v) => v.errors;
  static const Field<SavedFeedsModels, List<CurrentValidatorError>> _f$errors =
      Field('errors', _$errors);
  static List<bool> _$isAccepted(SavedFeedsModels v) => v.isAccepted;
  static const Field<SavedFeedsModels, List<bool>> _f$isAccepted =
      Field('isAccepted', _$isAccepted);
  static String _$nameFiles(SavedFeedsModels v) => v.nameFiles;
  static const Field<SavedFeedsModels, String> _f$nameFiles =
      Field('nameFiles', _$nameFiles);
  static DateTime _$date(SavedFeedsModels v) => v.date;
  static const Field<SavedFeedsModels, DateTime> _f$date =
      Field('date', _$date);

  @override
  final MappableFields<SavedFeedsModels> fields = const {
    #errors: _f$errors,
    #isAccepted: _f$isAccepted,
    #nameFiles: _f$nameFiles,
    #date: _f$date,
  };

  static SavedFeedsModels _instantiate(DecodingData data) {
    return SavedFeedsModels(
        errors: data.dec(_f$errors),
        isAccepted: data.dec(_f$isAccepted),
        nameFiles: data.dec(_f$nameFiles),
        date: data.dec(_f$date));
  }

  @override
  final Function instantiate = _instantiate;

  static SavedFeedsModels fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SavedFeedsModels>(map);
  }

  static SavedFeedsModels fromJson(String json) {
    return ensureInitialized().decodeJson<SavedFeedsModels>(json);
  }
}

mixin SavedFeedsModelsMappable {
  String toJson() {
    return SavedFeedsModelsMapper.ensureInitialized()
        .encodeJson<SavedFeedsModels>(this as SavedFeedsModels);
  }

  Map<String, dynamic> toMap() {
    return SavedFeedsModelsMapper.ensureInitialized()
        .encodeMap<SavedFeedsModels>(this as SavedFeedsModels);
  }

  SavedFeedsModelsCopyWith<SavedFeedsModels, SavedFeedsModels, SavedFeedsModels>
      get copyWith => _SavedFeedsModelsCopyWithImpl(
          this as SavedFeedsModels, $identity, $identity);
  @override
  String toString() {
    return SavedFeedsModelsMapper.ensureInitialized()
        .stringifyValue(this as SavedFeedsModels);
  }

  @override
  bool operator ==(Object other) {
    return SavedFeedsModelsMapper.ensureInitialized()
        .equalsValue(this as SavedFeedsModels, other);
  }

  @override
  int get hashCode {
    return SavedFeedsModelsMapper.ensureInitialized()
        .hashValue(this as SavedFeedsModels);
  }
}

extension SavedFeedsModelsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SavedFeedsModels, $Out> {
  SavedFeedsModelsCopyWith<$R, SavedFeedsModels, $Out>
      get $asSavedFeedsModels =>
          $base.as((v, t, t2) => _SavedFeedsModelsCopyWithImpl(v, t, t2));
}

abstract class SavedFeedsModelsCopyWith<$R, $In extends SavedFeedsModels, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      CurrentValidatorError,
      CurrentValidatorErrorCopyWith<$R, CurrentValidatorError,
          CurrentValidatorError>> get errors;
  ListCopyWith<$R, bool, ObjectCopyWith<$R, bool, bool>> get isAccepted;
  $R call(
      {List<CurrentValidatorError>? errors,
      List<bool>? isAccepted,
      String? nameFiles,
      DateTime? date});
  SavedFeedsModelsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SavedFeedsModelsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SavedFeedsModels, $Out>
    implements SavedFeedsModelsCopyWith<$R, SavedFeedsModels, $Out> {
  _SavedFeedsModelsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SavedFeedsModels> $mapper =
      SavedFeedsModelsMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      CurrentValidatorError,
      CurrentValidatorErrorCopyWith<$R, CurrentValidatorError,
          CurrentValidatorError>> get errors => ListCopyWith(
      $value.errors, (v, t) => v.copyWith.$chain(t), (v) => call(errors: v));
  @override
  ListCopyWith<$R, bool, ObjectCopyWith<$R, bool, bool>> get isAccepted =>
      ListCopyWith($value.isAccepted, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(isAccepted: v));
  @override
  $R call(
          {List<CurrentValidatorError>? errors,
          List<bool>? isAccepted,
          String? nameFiles,
          DateTime? date}) =>
      $apply(FieldCopyWithData({
        if (errors != null) #errors: errors,
        if (isAccepted != null) #isAccepted: isAccepted,
        if (nameFiles != null) #nameFiles: nameFiles,
        if (date != null) #date: date
      }));
  @override
  SavedFeedsModels $make(CopyWithData data) => SavedFeedsModels(
      errors: data.get(#errors, or: $value.errors),
      isAccepted: data.get(#isAccepted, or: $value.isAccepted),
      nameFiles: data.get(#nameFiles, or: $value.nameFiles),
      date: data.get(#date, or: $value.date));

  @override
  SavedFeedsModelsCopyWith<$R2, SavedFeedsModels, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SavedFeedsModelsCopyWithImpl($value, $cast, t);
}
