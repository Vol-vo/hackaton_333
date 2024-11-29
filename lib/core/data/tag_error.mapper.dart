// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tag_error.dart';

class TagErrorMapper extends ClassMapperBase<TagError> {
  TagErrorMapper._();

  static TagErrorMapper? _instance;
  static TagErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TagError';

  static String? _$offerId(TagError v) => v.offerId;
  static const Field<TagError, String> _f$offerId =
      Field('offerId', _$offerId, opt: true);
  static String? _$correctTag(TagError v) => v.correctTag;
  static const Field<TagError, String> _f$correctTag =
      Field('correctTag', _$correctTag, opt: true);
  static String? _$invalidTag(TagError v) => v.invalidTag;
  static const Field<TagError, String> _f$invalidTag =
      Field('invalidTag', _$invalidTag, opt: true);

  @override
  final MappableFields<TagError> fields = const {
    #offerId: _f$offerId,
    #correctTag: _f$correctTag,
    #invalidTag: _f$invalidTag,
  };

  static TagError _instantiate(DecodingData data) {
    return TagError(
        offerId: data.dec(_f$offerId),
        correctTag: data.dec(_f$correctTag),
        invalidTag: data.dec(_f$invalidTag));
  }

  @override
  final Function instantiate = _instantiate;

  static TagError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagError>(map);
  }

  static TagError fromJson(String json) {
    return ensureInitialized().decodeJson<TagError>(json);
  }
}

mixin TagErrorMappable {
  String toJson() {
    return TagErrorMapper.ensureInitialized()
        .encodeJson<TagError>(this as TagError);
  }

  Map<String, dynamic> toMap() {
    return TagErrorMapper.ensureInitialized()
        .encodeMap<TagError>(this as TagError);
  }

  TagErrorCopyWith<TagError, TagError, TagError> get copyWith =>
      _TagErrorCopyWithImpl(this as TagError, $identity, $identity);
  @override
  String toString() {
    return TagErrorMapper.ensureInitialized().stringifyValue(this as TagError);
  }

  @override
  bool operator ==(Object other) {
    return TagErrorMapper.ensureInitialized()
        .equalsValue(this as TagError, other);
  }

  @override
  int get hashCode {
    return TagErrorMapper.ensureInitialized().hashValue(this as TagError);
  }
}

extension TagErrorValueCopy<$R, $Out> on ObjectCopyWith<$R, TagError, $Out> {
  TagErrorCopyWith<$R, TagError, $Out> get $asTagError =>
      $base.as((v, t, t2) => _TagErrorCopyWithImpl(v, t, t2));
}

abstract class TagErrorCopyWith<$R, $In extends TagError, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? offerId, String? correctTag, String? invalidTag});
  TagErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagError, $Out>
    implements TagErrorCopyWith<$R, TagError, $Out> {
  _TagErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagError> $mapper =
      TagErrorMapper.ensureInitialized();
  @override
  $R call(
          {Object? offerId = $none,
          Object? correctTag = $none,
          Object? invalidTag = $none}) =>
      $apply(FieldCopyWithData({
        if (offerId != $none) #offerId: offerId,
        if (correctTag != $none) #correctTag: correctTag,
        if (invalidTag != $none) #invalidTag: invalidTag
      }));
  @override
  TagError $make(CopyWithData data) => TagError(
      offerId: data.get(#offerId, or: $value.offerId),
      correctTag: data.get(#correctTag, or: $value.correctTag),
      invalidTag: data.get(#invalidTag, or: $value.invalidTag));

  @override
  TagErrorCopyWith<$R2, TagError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagErrorCopyWithImpl($value, $cast, t);
}
