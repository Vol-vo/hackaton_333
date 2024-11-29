// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'load_feed_response.dart';

class LoadFeedResponseMapper extends ClassMapperBase<LoadFeedResponse> {
  LoadFeedResponseMapper._();

  static LoadFeedResponseMapper? _instance;
  static LoadFeedResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadFeedResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoadFeedResponse';

  static String? _$workId(LoadFeedResponse v) => v.workId;
  static const Field<LoadFeedResponse, String> _f$workId =
      Field('workId', _$workId, opt: true);

  @override
  final MappableFields<LoadFeedResponse> fields = const {
    #workId: _f$workId,
  };

  static LoadFeedResponse _instantiate(DecodingData data) {
    return LoadFeedResponse(workId: data.dec(_f$workId));
  }

  @override
  final Function instantiate = _instantiate;

  static LoadFeedResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadFeedResponse>(map);
  }

  static LoadFeedResponse fromJson(String json) {
    return ensureInitialized().decodeJson<LoadFeedResponse>(json);
  }
}

mixin LoadFeedResponseMappable {
  String toJson() {
    return LoadFeedResponseMapper.ensureInitialized()
        .encodeJson<LoadFeedResponse>(this as LoadFeedResponse);
  }

  Map<String, dynamic> toMap() {
    return LoadFeedResponseMapper.ensureInitialized()
        .encodeMap<LoadFeedResponse>(this as LoadFeedResponse);
  }

  LoadFeedResponseCopyWith<LoadFeedResponse, LoadFeedResponse, LoadFeedResponse>
      get copyWith => _LoadFeedResponseCopyWithImpl(
          this as LoadFeedResponse, $identity, $identity);
  @override
  String toString() {
    return LoadFeedResponseMapper.ensureInitialized()
        .stringifyValue(this as LoadFeedResponse);
  }

  @override
  bool operator ==(Object other) {
    return LoadFeedResponseMapper.ensureInitialized()
        .equalsValue(this as LoadFeedResponse, other);
  }

  @override
  int get hashCode {
    return LoadFeedResponseMapper.ensureInitialized()
        .hashValue(this as LoadFeedResponse);
  }
}

extension LoadFeedResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadFeedResponse, $Out> {
  LoadFeedResponseCopyWith<$R, LoadFeedResponse, $Out>
      get $asLoadFeedResponse =>
          $base.as((v, t, t2) => _LoadFeedResponseCopyWithImpl(v, t, t2));
}

abstract class LoadFeedResponseCopyWith<$R, $In extends LoadFeedResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? workId});
  LoadFeedResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoadFeedResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadFeedResponse, $Out>
    implements LoadFeedResponseCopyWith<$R, LoadFeedResponse, $Out> {
  _LoadFeedResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadFeedResponse> $mapper =
      LoadFeedResponseMapper.ensureInitialized();
  @override
  $R call({Object? workId = $none}) =>
      $apply(FieldCopyWithData({if (workId != $none) #workId: workId}));
  @override
  LoadFeedResponse $make(CopyWithData data) =>
      LoadFeedResponse(workId: data.get(#workId, or: $value.workId));

  @override
  LoadFeedResponseCopyWith<$R2, LoadFeedResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoadFeedResponseCopyWithImpl($value, $cast, t);
}
