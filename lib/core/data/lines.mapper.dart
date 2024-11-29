// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'lines.dart';

class LinesMapper extends ClassMapperBase<Lines> {
  LinesMapper._();

  static LinesMapper? _instance;
  static LinesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LinesMapper._());
      LineMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Lines';

  static List<Line>? _$invalidLines(Lines v) => v.invalidLines;
  static const Field<Lines, List<Line>> _f$invalidLines =
      Field('invalidLines', _$invalidLines, opt: true);
  static List<Line>? _$correctLines(Lines v) => v.correctLines;
  static const Field<Lines, List<Line>> _f$correctLines =
      Field('correctLines', _$correctLines, opt: true);

  @override
  final MappableFields<Lines> fields = const {
    #invalidLines: _f$invalidLines,
    #correctLines: _f$correctLines,
  };

  static Lines _instantiate(DecodingData data) {
    return Lines(
        invalidLines: data.dec(_f$invalidLines),
        correctLines: data.dec(_f$correctLines));
  }

  @override
  final Function instantiate = _instantiate;

  static Lines fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Lines>(map);
  }

  static Lines fromJson(String json) {
    return ensureInitialized().decodeJson<Lines>(json);
  }
}

mixin LinesMappable {
  String toJson() {
    return LinesMapper.ensureInitialized().encodeJson<Lines>(this as Lines);
  }

  Map<String, dynamic> toMap() {
    return LinesMapper.ensureInitialized().encodeMap<Lines>(this as Lines);
  }

  LinesCopyWith<Lines, Lines, Lines> get copyWith =>
      _LinesCopyWithImpl(this as Lines, $identity, $identity);
  @override
  String toString() {
    return LinesMapper.ensureInitialized().stringifyValue(this as Lines);
  }

  @override
  bool operator ==(Object other) {
    return LinesMapper.ensureInitialized().equalsValue(this as Lines, other);
  }

  @override
  int get hashCode {
    return LinesMapper.ensureInitialized().hashValue(this as Lines);
  }
}

extension LinesValueCopy<$R, $Out> on ObjectCopyWith<$R, Lines, $Out> {
  LinesCopyWith<$R, Lines, $Out> get $asLines =>
      $base.as((v, t, t2) => _LinesCopyWithImpl(v, t, t2));
}

abstract class LinesCopyWith<$R, $In extends Lines, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Line, LineCopyWith<$R, Line, Line>>? get invalidLines;
  ListCopyWith<$R, Line, LineCopyWith<$R, Line, Line>>? get correctLines;
  $R call({List<Line>? invalidLines, List<Line>? correctLines});
  LinesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LinesCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Lines, $Out>
    implements LinesCopyWith<$R, Lines, $Out> {
  _LinesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Lines> $mapper = LinesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Line, LineCopyWith<$R, Line, Line>>? get invalidLines =>
      $value.invalidLines != null
          ? ListCopyWith($value.invalidLines!, (v, t) => v.copyWith.$chain(t),
              (v) => call(invalidLines: v))
          : null;
  @override
  ListCopyWith<$R, Line, LineCopyWith<$R, Line, Line>>? get correctLines =>
      $value.correctLines != null
          ? ListCopyWith($value.correctLines!, (v, t) => v.copyWith.$chain(t),
              (v) => call(correctLines: v))
          : null;
  @override
  $R call({Object? invalidLines = $none, Object? correctLines = $none}) =>
      $apply(FieldCopyWithData({
        if (invalidLines != $none) #invalidLines: invalidLines,
        if (correctLines != $none) #correctLines: correctLines
      }));
  @override
  Lines $make(CopyWithData data) => Lines(
      invalidLines: data.get(#invalidLines, or: $value.invalidLines),
      correctLines: data.get(#correctLines, or: $value.correctLines));

  @override
  LinesCopyWith<$R2, Lines, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LinesCopyWithImpl($value, $cast, t);
}
