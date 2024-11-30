// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'feed_loader_state.dart';

class FeedLoaderStateMapper extends ClassMapperBase<FeedLoaderState> {
  FeedLoaderStateMapper._();

  static FeedLoaderStateMapper? _instance;
  static FeedLoaderStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FeedLoaderStateMapper._());
      CurrentValidatorErrorsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FeedLoaderState';

  static CurrentValidatorErrors? _$errors(FeedLoaderState v) => v.errors;
  static const Field<FeedLoaderState, CurrentValidatorErrors> _f$errors =
      Field('errors', _$errors, opt: true);
  static String? _$workId(FeedLoaderState v) => v.workId;
  static const Field<FeedLoaderState, String> _f$workId =
      Field('workId', _$workId, opt: true);

  @override
  final MappableFields<FeedLoaderState> fields = const {
    #errors: _f$errors,
    #workId: _f$workId,
  };

  static FeedLoaderState _instantiate(DecodingData data) {
    return FeedLoaderState(
        errors: data.dec(_f$errors), workId: data.dec(_f$workId));
  }

  @override
  final Function instantiate = _instantiate;

  static FeedLoaderState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FeedLoaderState>(map);
  }

  static FeedLoaderState fromJson(String json) {
    return ensureInitialized().decodeJson<FeedLoaderState>(json);
  }
}

mixin FeedLoaderStateMappable {
  String toJson() {
    return FeedLoaderStateMapper.ensureInitialized()
        .encodeJson<FeedLoaderState>(this as FeedLoaderState);
  }

  Map<String, dynamic> toMap() {
    return FeedLoaderStateMapper.ensureInitialized()
        .encodeMap<FeedLoaderState>(this as FeedLoaderState);
  }

  FeedLoaderStateCopyWith<FeedLoaderState, FeedLoaderState, FeedLoaderState>
      get copyWith => _FeedLoaderStateCopyWithImpl(
          this as FeedLoaderState, $identity, $identity);
  @override
  String toString() {
    return FeedLoaderStateMapper.ensureInitialized()
        .stringifyValue(this as FeedLoaderState);
  }

  @override
  bool operator ==(Object other) {
    return FeedLoaderStateMapper.ensureInitialized()
        .equalsValue(this as FeedLoaderState, other);
  }

  @override
  int get hashCode {
    return FeedLoaderStateMapper.ensureInitialized()
        .hashValue(this as FeedLoaderState);
  }
}

extension FeedLoaderStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FeedLoaderState, $Out> {
  FeedLoaderStateCopyWith<$R, FeedLoaderState, $Out> get $asFeedLoaderState =>
      $base.as((v, t, t2) => _FeedLoaderStateCopyWithImpl(v, t, t2));
}

abstract class FeedLoaderStateCopyWith<$R, $In extends FeedLoaderState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CurrentValidatorErrorsCopyWith<$R, CurrentValidatorErrors,
      CurrentValidatorErrors>? get errors;
  $R call({CurrentValidatorErrors? errors, String? workId});
  FeedLoaderStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FeedLoaderStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FeedLoaderState, $Out>
    implements FeedLoaderStateCopyWith<$R, FeedLoaderState, $Out> {
  _FeedLoaderStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FeedLoaderState> $mapper =
      FeedLoaderStateMapper.ensureInitialized();
  @override
  CurrentValidatorErrorsCopyWith<$R, CurrentValidatorErrors,
          CurrentValidatorErrors>?
      get errors => $value.errors?.copyWith.$chain((v) => call(errors: v));
  @override
  $R call({Object? errors = $none, Object? workId = $none}) =>
      $apply(FieldCopyWithData({
        if (errors != $none) #errors: errors,
        if (workId != $none) #workId: workId
      }));
  @override
  FeedLoaderState $make(CopyWithData data) => FeedLoaderState(
      errors: data.get(#errors, or: $value.errors),
      workId: data.get(#workId, or: $value.workId));

  @override
  FeedLoaderStateCopyWith<$R2, FeedLoaderState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FeedLoaderStateCopyWithImpl($value, $cast, t);
}
