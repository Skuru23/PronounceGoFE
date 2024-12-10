// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_lesson_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LearnLessonResponse extends LearnLessonResponse {
  @override
  final int progress;

  factory _$LearnLessonResponse(
          [void Function(LearnLessonResponseBuilder)? updates]) =>
      (new LearnLessonResponseBuilder()..update(updates))._build();

  _$LearnLessonResponse._({required this.progress}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        progress, r'LearnLessonResponse', 'progress');
  }

  @override
  LearnLessonResponse rebuild(
          void Function(LearnLessonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LearnLessonResponseBuilder toBuilder() =>
      new LearnLessonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LearnLessonResponse && progress == other.progress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LearnLessonResponse')
          ..add('progress', progress))
        .toString();
  }
}

class LearnLessonResponseBuilder
    implements Builder<LearnLessonResponse, LearnLessonResponseBuilder> {
  _$LearnLessonResponse? _$v;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  LearnLessonResponseBuilder() {
    LearnLessonResponse._defaults(this);
  }

  LearnLessonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _progress = $v.progress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LearnLessonResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LearnLessonResponse;
  }

  @override
  void update(void Function(LearnLessonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LearnLessonResponse build() => _build();

  _$LearnLessonResponse _build() {
    final _$result = _$v ??
        new _$LearnLessonResponse._(
            progress: BuiltValueNullFieldError.checkNotNull(
                progress, r'LearnLessonResponse', 'progress'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
