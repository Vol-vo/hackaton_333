// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'saved_feeds_model.dart';

class SavedFeedsModelMapper extends ClassMapperBase<SavedFeedsModel> {
  SavedFeedsModelMapper._();

  static SavedFeedsModelMapper? _instance;
  static SavedFeedsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SavedFeedsModelMapper._());
      CurrentValidatorErrorsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SavedFeedsModel';

  static CurrentValidatorErrors _$errors(SavedFeedsModel v) => v.errors;
  static const Field<SavedFeedsModel, CurrentValidatorErrors> _f$errors =
      Field('errors', _$errors);
  static List<bool> _$isAccepted(SavedFeedsModel v) => v.isAccepted;
  static const Field<SavedFeedsModel, List<bool>> _f$isAccepted =
      Field('isAccepted', _$isAccepted);
  static String _$nameFiles(SavedFeedsModel v) => v.nameFiles;
  static const Field<SavedFeedsModel, String> _f$nameFiles =
      Field('nameFiles', _$nameFiles);
  static DateTime _$date(SavedFeedsModel v) => v.date;
  static const Field<SavedFeedsModel, DateTime> _f$date = Field('date', _$date);

  @override
  final MappableFields<SavedFeedsModel> fields = const {
    #errors: _f$errors,
    #isAccepted: _f$isAccepted,
    #nameFiles: _f$nameFiles,
    #date: _f$date,
  };

  static SavedFeedsModel _instantiate(DecodingData data) {
    return SavedFeedsModel(
        errors: data.dec(_f$errors),
        isAccepted: data.dec(_f$isAccepted),
        nameFiles: data.dec(_f$nameFiles),
        date: data.dec(_f$date));
  }

  @override
  final Function instantiate = _instantiate;

  static SavedFeedsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SavedFeedsModel>(map);
  }

  static SavedFeedsModel fromJson(String json) {
    return ensureInitialized().decodeJson<SavedFeedsModel>(json);
  }
}

mixin SavedFeedsModelMappable {
  String toJson() {
    return SavedFeedsModelMapper.ensureInitialized()
        .encodeJson<SavedFeedsModel>(this as SavedFeedsModel);
  }

  Map<String, dynamic> toMap() {
    return SavedFeedsModelMapper.ensureInitialized()
        .encodeMap<SavedFeedsModel>(this as SavedFeedsModel);
  }

  SavedFeedsModelCopyWith<SavedFeedsModel, SavedFeedsModel, SavedFeedsModel>
      get copyWith => _SavedFeedsModelCopyWithImpl(
          this as SavedFeedsModel, $identity, $identity);
  @override
  String toString() {
    return SavedFeedsModelMapper.ensureInitialized()
        .stringifyValue(this as SavedFeedsModel);
  }

  @override
  bool operator ==(Object other) {
    return SavedFeedsModelMapper.ensureInitialized()
        .equalsValue(this as SavedFeedsModel, other);
  }

  @override
  int get hashCode {
    return SavedFeedsModelMapper.ensureInitialized()
        .hashValue(this as SavedFeedsModel);
  }
}

extension SavedFeedsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SavedFeedsModel, $Out> {
  SavedFeedsModelCopyWith<$R, SavedFeedsModel, $Out> get $asSavedFeedsModel =>
      $base.as((v, t, t2) => _SavedFeedsModelCopyWithImpl(v, t, t2));
}

abstract class SavedFeedsModelCopyWith<$R, $In extends SavedFeedsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CurrentValidatorErrorsCopyWith<$R, CurrentValidatorErrors,
      CurrentValidatorErrors> get errors;
  ListCopyWith<$R, bool, ObjectCopyWith<$R, bool, bool>> get isAccepted;
  $R call(
      {CurrentValidatorErrors? errors,
      List<bool>? isAccepted,
      String? nameFiles,
      DateTime? date});
  SavedFeedsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SavedFeedsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SavedFeedsModel, $Out>
    implements SavedFeedsModelCopyWith<$R, SavedFeedsModel, $Out> {
  _SavedFeedsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SavedFeedsModel> $mapper =
      SavedFeedsModelMapper.ensureInitialized();
  @override
  CurrentValidatorErrorsCopyWith<$R, CurrentValidatorErrors,
          CurrentValidatorErrors>
      get errors => $value.errors.copyWith.$chain((v) => call(errors: v));
  @override
  ListCopyWith<$R, bool, ObjectCopyWith<$R, bool, bool>> get isAccepted =>
      ListCopyWith($value.isAccepted, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(isAccepted: v));
  @override
  $R call(
          {CurrentValidatorErrors? errors,
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
  SavedFeedsModel $make(CopyWithData data) => SavedFeedsModel(
      errors: data.get(#errors, or: $value.errors),
      isAccepted: data.get(#isAccepted, or: $value.isAccepted),
      nameFiles: data.get(#nameFiles, or: $value.nameFiles),
      date: data.get(#date, or: $value.date));

  @override
  SavedFeedsModelCopyWith<$R2, SavedFeedsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SavedFeedsModelCopyWithImpl($value, $cast, t);
}
