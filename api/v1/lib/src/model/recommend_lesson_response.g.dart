// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_lesson_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendLessonResponse extends RecommendLessonResponse {
  @override
  final BuiltList<LessonBase>? hotLessons;
  @override
  final BuiltList<LessonBase>? newLessons;

  factory _$RecommendLessonResponse(
          [void Function(RecommendLessonResponseBuilder)? updates]) =>
      (new RecommendLessonResponseBuilder()..update(updates))._build();

  _$RecommendLessonResponse._({this.hotLessons, this.newLessons}) : super._();

  @override
  RecommendLessonResponse rebuild(
          void Function(RecommendLessonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendLessonResponseBuilder toBuilder() =>
      new RecommendLessonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendLessonResponse &&
        hotLessons == other.hotLessons &&
        newLessons == other.newLessons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hotLessons.hashCode);
    _$hash = $jc(_$hash, newLessons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendLessonResponse')
          ..add('hotLessons', hotLessons)
          ..add('newLessons', newLessons))
        .toString();
  }
}

class RecommendLessonResponseBuilder
    implements
        Builder<RecommendLessonResponse, RecommendLessonResponseBuilder> {
  _$RecommendLessonResponse? _$v;

  ListBuilder<LessonBase>? _hotLessons;
  ListBuilder<LessonBase> get hotLessons =>
      _$this._hotLessons ??= new ListBuilder<LessonBase>();
  set hotLessons(ListBuilder<LessonBase>? hotLessons) =>
      _$this._hotLessons = hotLessons;

  ListBuilder<LessonBase>? _newLessons;
  ListBuilder<LessonBase> get newLessons =>
      _$this._newLessons ??= new ListBuilder<LessonBase>();
  set newLessons(ListBuilder<LessonBase>? newLessons) =>
      _$this._newLessons = newLessons;

  RecommendLessonResponseBuilder() {
    RecommendLessonResponse._defaults(this);
  }

  RecommendLessonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hotLessons = $v.hotLessons?.toBuilder();
      _newLessons = $v.newLessons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendLessonResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecommendLessonResponse;
  }

  @override
  void update(void Function(RecommendLessonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendLessonResponse build() => _build();

  _$RecommendLessonResponse _build() {
    _$RecommendLessonResponse _$result;
    try {
      _$result = _$v ??
          new _$RecommendLessonResponse._(
              hotLessons: _hotLessons?.build(),
              newLessons: _newLessons?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hotLessons';
        _hotLessons?.build();
        _$failedField = 'newLessons';
        _newLessons?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecommendLessonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
