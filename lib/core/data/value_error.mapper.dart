// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'value_error.dart';

class ValueErrorMapper extends ClassMapperBase<ValueError> {
  ValueErrorMapper._();

  static ValueErrorMapper? _instance;
  static ValueErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ValueErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ValueError';

  static String? _$correctValue(ValueError v) => v.correctValue;
  static const Field<ValueError, String> _f$correctValue =
      Field('correctValue', _$correctValue, opt: true);
  static String? _$invalidValue(ValueError v) => v.invalidValue;
  static const Field<ValueError, String> _f$invalidValue =
      Field('invalidValue', _$invalidValue, opt: true);
  static String? _$offerId(ValueError v) => v.offerId;
  static const Field<ValueError, String> _f$offerId =
      Field('offerId', _$offerId, opt: true);
  static String? _$tag(ValueError v) => v.tag;
  static const Field<ValueError, String> _f$tag =
      Field('tag', _$tag, opt: true);

  @override
  final MappableFields<ValueError> fields = const {
    #correctValue: _f$correctValue,
    #invalidValue: _f$invalidValue,
    #offerId: _f$offerId,
    #tag: _f$tag,
  };

  static ValueError _instantiate(DecodingData data) {
    return ValueError(
        correctValue: data.dec(_f$correctValue),
        invalidValue: data.dec(_f$invalidValue),
        offerId: data.dec(_f$offerId),
        tag: data.dec(_f$tag));
  }

  @override
  final Function instantiate = _instantiate;

  static ValueError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ValueError>(map);
  }

  static ValueError fromJson(String json) {
    return ensureInitialized().decodeJson<ValueError>(json);
  }
}

mixin ValueErrorMappable {
  String toJson() {
    return ValueErrorMapper.ensureInitialized()
        .encodeJson<ValueError>(this as ValueError);
  }

  Map<String, dynamic> toMap() {
    return ValueErrorMapper.ensureInitialized()
        .encodeMap<ValueError>(this as ValueError);
  }

  ValueErrorCopyWith<ValueError, ValueError, ValueError> get copyWith =>
      _ValueErrorCopyWithImpl(this as ValueError, $identity, $identity);
  @override
  String toString() {
    return ValueErrorMapper.ensureInitialized()
        .stringifyValue(this as ValueError);
  }

  @override
  bool operator ==(Object other) {
    return ValueErrorMapper.ensureInitialized()
        .equalsValue(this as ValueError, other);
  }

  @override
  int get hashCode {
    return ValueErrorMapper.ensureInitialized().hashValue(this as ValueError);
  }
}

extension ValueErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ValueError, $Out> {
  ValueErrorCopyWith<$R, ValueError, $Out> get $asValueError =>
      $base.as((v, t, t2) => _ValueErrorCopyWithImpl(v, t, t2));
}

abstract class ValueErrorCopyWith<$R, $In extends ValueError, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? correctValue,
      String? invalidValue,
      String? offerId,
      String? tag});
  ValueErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ValueErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ValueError, $Out>
    implements ValueErrorCopyWith<$R, ValueError, $Out> {
  _ValueErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ValueError> $mapper =
      ValueErrorMapper.ensureInitialized();
  @override
  $R call(
          {Object? correctValue = $none,
          Object? invalidValue = $none,
          Object? offerId = $none,
          Object? tag = $none}) =>
      $apply(FieldCopyWithData({
        if (correctValue != $none) #correctValue: correctValue,
        if (invalidValue != $none) #invalidValue: invalidValue,
        if (offerId != $none) #offerId: offerId,
        if (tag != $none) #tag: tag
      }));
  @override
  ValueError $make(CopyWithData data) => ValueError(
      correctValue: data.get(#correctValue, or: $value.correctValue),
      invalidValue: data.get(#invalidValue, or: $value.invalidValue),
      offerId: data.get(#offerId, or: $value.offerId),
      tag: data.get(#tag, or: $value.tag));

  @override
  ValueErrorCopyWith<$R2, ValueError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ValueErrorCopyWithImpl($value, $cast, t);
}
