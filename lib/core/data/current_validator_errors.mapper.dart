// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'current_validator_errors.dart';

class CurrentValidatorErrorsMapper
    extends ClassMapperBase<CurrentValidatorErrors> {
  CurrentValidatorErrorsMapper._();

  static CurrentValidatorErrorsMapper? _instance;
  static CurrentValidatorErrorsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CurrentValidatorErrorsMapper._());
      CurrentValidatorErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CurrentValidatorErrors';

  static bool? _$isReady(CurrentValidatorErrors v) => v.isReady;
  static const Field<CurrentValidatorErrors, bool> _f$isReady =
      Field('isReady', _$isReady, opt: true);
  static List<CurrentValidatorError>? _$currentValidatorErrors(
          CurrentValidatorErrors v) =>
      v.currentValidatorErrors;
  static const Field<CurrentValidatorErrors, List<CurrentValidatorError>>
      _f$currentValidatorErrors =
      Field('currentValidatorErrors', _$currentValidatorErrors, opt: true);

  @override
  final MappableFields<CurrentValidatorErrors> fields = const {
    #isReady: _f$isReady,
    #currentValidatorErrors: _f$currentValidatorErrors,
  };

  static CurrentValidatorErrors _instantiate(DecodingData data) {
    return CurrentValidatorErrors(
        isReady: data.dec(_f$isReady),
        currentValidatorErrors: data.dec(_f$currentValidatorErrors));
  }

  @override
  final Function instantiate = _instantiate;

  static CurrentValidatorErrors fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CurrentValidatorErrors>(map);
  }

  static CurrentValidatorErrors fromJson(String json) {
    return ensureInitialized().decodeJson<CurrentValidatorErrors>(json);
  }
}

mixin CurrentValidatorErrorsMappable {
  String toJson() {
    return CurrentValidatorErrorsMapper.ensureInitialized()
        .encodeJson<CurrentValidatorErrors>(this as CurrentValidatorErrors);
  }

  Map<String, dynamic> toMap() {
    return CurrentValidatorErrorsMapper.ensureInitialized()
        .encodeMap<CurrentValidatorErrors>(this as CurrentValidatorErrors);
  }

  CurrentValidatorErrorsCopyWith<CurrentValidatorErrors, CurrentValidatorErrors,
          CurrentValidatorErrors>
      get copyWith => _CurrentValidatorErrorsCopyWithImpl(
          this as CurrentValidatorErrors, $identity, $identity);
  @override
  String toString() {
    return CurrentValidatorErrorsMapper.ensureInitialized()
        .stringifyValue(this as CurrentValidatorErrors);
  }

  @override
  bool operator ==(Object other) {
    return CurrentValidatorErrorsMapper.ensureInitialized()
        .equalsValue(this as CurrentValidatorErrors, other);
  }

  @override
  int get hashCode {
    return CurrentValidatorErrorsMapper.ensureInitialized()
        .hashValue(this as CurrentValidatorErrors);
  }
}

extension CurrentValidatorErrorsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CurrentValidatorErrors, $Out> {
  CurrentValidatorErrorsCopyWith<$R, CurrentValidatorErrors, $Out>
      get $asCurrentValidatorErrors =>
          $base.as((v, t, t2) => _CurrentValidatorErrorsCopyWithImpl(v, t, t2));
}

abstract class CurrentValidatorErrorsCopyWith<
    $R,
    $In extends CurrentValidatorErrors,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      CurrentValidatorError,
      CurrentValidatorErrorCopyWith<$R, CurrentValidatorError,
          CurrentValidatorError>>? get currentValidatorErrors;
  $R call({bool? isReady, List<CurrentValidatorError>? currentValidatorErrors});
  CurrentValidatorErrorsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CurrentValidatorErrorsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CurrentValidatorErrors, $Out>
    implements
        CurrentValidatorErrorsCopyWith<$R, CurrentValidatorErrors, $Out> {
  _CurrentValidatorErrorsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CurrentValidatorErrors> $mapper =
      CurrentValidatorErrorsMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      CurrentValidatorError,
      CurrentValidatorErrorCopyWith<$R, CurrentValidatorError,
          CurrentValidatorError>>? get currentValidatorErrors =>
      $value.currentValidatorErrors != null
          ? ListCopyWith(
              $value.currentValidatorErrors!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(currentValidatorErrors: v))
          : null;
  @override
  $R call({Object? isReady = $none, Object? currentValidatorErrors = $none}) =>
      $apply(FieldCopyWithData({
        if (isReady != $none) #isReady: isReady,
        if (currentValidatorErrors != $none)
          #currentValidatorErrors: currentValidatorErrors
      }));
  @override
  CurrentValidatorErrors $make(CopyWithData data) => CurrentValidatorErrors(
      isReady: data.get(#isReady, or: $value.isReady),
      currentValidatorErrors:
          data.get(#currentValidatorErrors, or: $value.currentValidatorErrors));

  @override
  CurrentValidatorErrorsCopyWith<$R2, CurrentValidatorErrors, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CurrentValidatorErrorsCopyWithImpl($value, $cast, t);
}
