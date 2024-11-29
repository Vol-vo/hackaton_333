// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'line.dart';

class LineMapper extends ClassMapperBase<Line> {
  LineMapper._();

  static LineMapper? _instance;
  static LineMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LineMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Line';

  static String? _$line(Line v) => v.line;
  static const Field<Line, String> _f$line = Field('line', _$line, opt: true);
  static bool? _$isColored(Line v) => v.isColored;
  static const Field<Line, bool> _f$isColored =
      Field('isColored', _$isColored, opt: true);

  @override
  final MappableFields<Line> fields = const {
    #line: _f$line,
    #isColored: _f$isColored,
  };

  static Line _instantiate(DecodingData data) {
    return Line(line: data.dec(_f$line), isColored: data.dec(_f$isColored));
  }

  @override
  final Function instantiate = _instantiate;

  static Line fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Line>(map);
  }

  static Line fromJson(String json) {
    return ensureInitialized().decodeJson<Line>(json);
  }
}

mixin LineMappable {
  String toJson() {
    return LineMapper.ensureInitialized().encodeJson<Line>(this as Line);
  }

  Map<String, dynamic> toMap() {
    return LineMapper.ensureInitialized().encodeMap<Line>(this as Line);
  }

  LineCopyWith<Line, Line, Line> get copyWith =>
      _LineCopyWithImpl(this as Line, $identity, $identity);
  @override
  String toString() {
    return LineMapper.ensureInitialized().stringifyValue(this as Line);
  }

  @override
  bool operator ==(Object other) {
    return LineMapper.ensureInitialized().equalsValue(this as Line, other);
  }

  @override
  int get hashCode {
    return LineMapper.ensureInitialized().hashValue(this as Line);
  }
}

extension LineValueCopy<$R, $Out> on ObjectCopyWith<$R, Line, $Out> {
  LineCopyWith<$R, Line, $Out> get $asLine =>
      $base.as((v, t, t2) => _LineCopyWithImpl(v, t, t2));
}

abstract class LineCopyWith<$R, $In extends Line, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? line, bool? isColored});
  LineCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LineCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Line, $Out>
    implements LineCopyWith<$R, Line, $Out> {
  _LineCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Line> $mapper = LineMapper.ensureInitialized();
  @override
  $R call({Object? line = $none, Object? isColored = $none}) =>
      $apply(FieldCopyWithData({
        if (line != $none) #line: line,
        if (isColored != $none) #isColored: isColored
      }));
  @override
  Line $make(CopyWithData data) => Line(
      line: data.get(#line, or: $value.line),
      isColored: data.get(#isColored, or: $value.isColored));

  @override
  LineCopyWith<$R2, Line, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LineCopyWithImpl($value, $cast, t);
}
