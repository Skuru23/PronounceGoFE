// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_sentence_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LessonSentenceBase extends LessonSentenceBase {
  @override
  final int? id;
  @override
  final String? sentence;

  factory _$LessonSentenceBase(
          [void Function(LessonSentenceBaseBuilder)? updates]) =>
      (new LessonSentenceBaseBuilder()..update(updates))._build();

  _$LessonSentenceBase._({this.id, this.sentence}) : super._();

  @override
  LessonSentenceBase rebuild(
          void Function(LessonSentenceBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonSentenceBaseBuilder toBuilder() =>
      new LessonSentenceBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonSentenceBase &&
        id == other.id &&
        sentence == other.sentence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sentence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LessonSentenceBase')
          ..add('id', id)
          ..add('sentence', sentence))
        .toString();
  }
}

class LessonSentenceBaseBuilder
    implements Builder<LessonSentenceBase, LessonSentenceBaseBuilder> {
  _$LessonSentenceBase? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _sentence;
  String? get sentence => _$this._sentence;
  set sentence(String? sentence) => _$this._sentence = sentence;

  LessonSentenceBaseBuilder() {
    LessonSentenceBase._defaults(this);
  }

  LessonSentenceBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sentence = $v.sentence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LessonSentenceBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LessonSentenceBase;
  }

  @override
  void update(void Function(LessonSentenceBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LessonSentenceBase build() => _build();

  _$LessonSentenceBase _build() {
    final _$result =
        _$v ?? new _$LessonSentenceBase._(id: id, sentence: sentence);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
