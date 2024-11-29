// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'current_validator_error.dart';

class CurrentValidatorErrorMapper
    extends ClassMapperBase<CurrentValidatorError> {
  CurrentValidatorErrorMapper._();

  static CurrentValidatorErrorMapper? _instance;
  static CurrentValidatorErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CurrentValidatorErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CurrentValidatorError';

  static String? _$message(CurrentValidatorError v) => v.message;
  static const Field<CurrentValidatorError, String> _f$message =
      Field('message', _$message, opt: true);
  static String? _$availableFix(CurrentValidatorError v) => v.availableFix;
  static const Field<CurrentValidatorError, String> _f$availableFix =
      Field('availableFix', _$availableFix, opt: true);

  @override
  final MappableFields<CurrentValidatorError> fields = const {
    #message: _f$message,
    #availableFix: _f$availableFix,
  };

  static CurrentValidatorError _instantiate(DecodingData data) {
    return CurrentValidatorError(
        message: data.dec(_f$message), availableFix: data.dec(_f$availableFix));
  }

  @override
  final Function instantiate = _instantiate;

  static CurrentValidatorError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CurrentValidatorError>(map);
  }

  static CurrentValidatorError fromJson(String json) {
    return ensureInitialized().decodeJson<CurrentValidatorError>(json);
  }
}

mixin CurrentValidatorErrorMappable {
  String toJson() {
    return CurrentValidatorErrorMapper.ensureInitialized()
        .encodeJson<CurrentValidatorError>(this as CurrentValidatorError);
  }

  Map<String, dynamic> toMap() {
    return CurrentValidatorErrorMapper.ensureInitialized()
        .encodeMap<CurrentValidatorError>(this as CurrentValidatorError);
  }

  CurrentValidatorErrorCopyWith<CurrentValidatorError, CurrentValidatorError,
          CurrentValidatorError>
      get copyWith => _CurrentValidatorErrorCopyWithImpl(
          this as CurrentValidatorError, $identity, $identity);
  @override
  String toString() {
    return CurrentValidatorErrorMapper.ensureInitialized()
        .stringifyValue(this as CurrentValidatorError);
  }

  @override
  bool operator ==(Object other) {
    return CurrentValidatorErrorMapper.ensureInitialized()
        .equalsValue(this as CurrentValidatorError, other);
  }

  @override
  int get hashCode {
    return CurrentValidatorErrorMapper.ensureInitialized()
        .hashValue(this as CurrentValidatorError);
  }
}

extension CurrentValidatorErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CurrentValidatorError, $Out> {
  CurrentValidatorErrorCopyWith<$R, CurrentValidatorError, $Out>
      get $asCurrentValidatorError =>
          $base.as((v, t, t2) => _CurrentValidatorErrorCopyWithImpl(v, t, t2));
}

abstract class CurrentValidatorErrorCopyWith<
    $R,
    $In extends CurrentValidatorError,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, String? availableFix});
  CurrentValidatorErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CurrentValidatorErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CurrentValidatorError, $Out>
    implements CurrentValidatorErrorCopyWith<$R, CurrentValidatorError, $Out> {
  _CurrentValidatorErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CurrentValidatorError> $mapper =
      CurrentValidatorErrorMapper.ensureInitialized();
  @override
  $R call({Object? message = $none, Object? availableFix = $none}) =>
      $apply(FieldCopyWithData({
        if (message != $none) #message: message,
        if (availableFix != $none) #availableFix: availableFix
      }));
  @override
  CurrentValidatorError $make(CopyWithData data) => CurrentValidatorError(
      message: data.get(#message, or: $value.message),
      availableFix: data.get(#availableFix, or: $value.availableFix));

  @override
  CurrentValidatorErrorCopyWith<$R2, CurrentValidatorError, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CurrentValidatorErrorCopyWithImpl($value, $cast, t);
}
