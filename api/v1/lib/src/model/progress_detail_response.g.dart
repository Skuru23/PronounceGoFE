// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProgressDetailResponse extends ProgressDetailResponse {
  @override
  final int id;
  @override
  final int lessonId;
  @override
  final String? lessonName;
  @override
  final String? creatorName;
  @override
  final String? groupOwnerName;
  @override
  final int? totalWord;
  @override
  final int? remainWord;
  @override
  final int? totalSentence;
  @override
  final int? remainSentence;
  @override
  final int? finishPercent;
  @override
  final BuiltList<ProgressWordDetailItem>? words;
  @override
  final BuiltList<ProgressSentenceDetailItem>? sentences;

  factory _$ProgressDetailResponse(
          [void Function(ProgressDetailResponseBuilder)? updates]) =>
      (new ProgressDetailResponseBuilder()..update(updates))._build();

  _$ProgressDetailResponse._(
      {required this.id,
      required this.lessonId,
      this.lessonName,
      this.creatorName,
      this.groupOwnerName,
      this.totalWord,
      this.remainWord,
      this.totalSentence,
      this.remainSentence,
      this.finishPercent,
      this.words,
      this.sentences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ProgressDetailResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lessonId, r'ProgressDetailResponse', 'lessonId');
  }

  @override
  ProgressDetailResponse rebuild(
          void Function(ProgressDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressDetailResponseBuilder toBuilder() =>
      new ProgressDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressDetailResponse &&
        id == other.id &&
        lessonId == other.lessonId &&
        lessonName == other.lessonName &&
        creatorName == other.creatorName &&
        groupOwnerName == other.groupOwnerName &&
        totalWord == other.totalWord &&
        remainWord == other.remainWord &&
        totalSentence == other.totalSentence &&
        remainSentence == other.remainSentence &&
        finishPercent == other.finishPercent &&
        words == other.words &&
        sentences == other.sentences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lessonId.hashCode);
    _$hash = $jc(_$hash, lessonName.hashCode);
    _$hash = $jc(_$hash, creatorName.hashCode);
    _$hash = $jc(_$hash, groupOwnerName.hashCode);
    _$hash = $jc(_$hash, totalWord.hashCode);
    _$hash = $jc(_$hash, remainWord.hashCode);
    _$hash = $jc(_$hash, totalSentence.hashCode);
    _$hash = $jc(_$hash, remainSentence.hashCode);
    _$hash = $jc(_$hash, finishPercent.hashCode);
    _$hash = $jc(_$hash, words.hashCode);
    _$hash = $jc(_$hash, sentences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProgressDetailResponse')
          ..add('id', id)
          ..add('lessonId', lessonId)
          ..add('lessonName', lessonName)
          ..add('creatorName', creatorName)
          ..add('groupOwnerName', groupOwnerName)
          ..add('totalWord', totalWord)
          ..add('remainWord', remainWord)
          ..add('totalSentence', totalSentence)
          ..add('remainSentence', remainSentence)
          ..add('finishPercent', finishPercent)
          ..add('words', words)
          ..add('sentences', sentences))
        .toString();
  }
}

class ProgressDetailResponseBuilder
    implements Builder<ProgressDetailResponse, ProgressDetailResponseBuilder> {
  _$ProgressDetailResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _lessonId;
  int? get lessonId => _$this._lessonId;
  set lessonId(int? lessonId) => _$this._lessonId = lessonId;

  String? _lessonName;
  String? get lessonName => _$this._lessonName;
  set lessonName(String? lessonName) => _$this._lessonName = lessonName;

  String? _creatorName;
  String? get creatorName => _$this._creatorName;
  set creatorName(String? creatorName) => _$this._creatorName = creatorName;

  String? _groupOwnerName;
  String? get groupOwnerName => _$this._groupOwnerName;
  set groupOwnerName(String? groupOwnerName) =>
      _$this._groupOwnerName = groupOwnerName;

  int? _totalWord;
  int? get totalWord => _$this._totalWord;
  set totalWord(int? totalWord) => _$this._totalWord = totalWord;

  int? _remainWord;
  int? get remainWord => _$this._remainWord;
  set remainWord(int? remainWord) => _$this._remainWord = remainWord;

  int? _totalSentence;
  int? get totalSentence => _$this._totalSentence;
  set totalSentence(int? totalSentence) =>
      _$this._totalSentence = totalSentence;

  int? _remainSentence;
  int? get remainSentence => _$this._remainSentence;
  set remainSentence(int? remainSentence) =>
      _$this._remainSentence = remainSentence;

  int? _finishPercent;
  int? get finishPercent => _$this._finishPercent;
  set finishPercent(int? finishPercent) =>
      _$this._finishPercent = finishPercent;

  ListBuilder<ProgressWordDetailItem>? _words;
  ListBuilder<ProgressWordDetailItem> get words =>
      _$this._words ??= new ListBuilder<ProgressWordDetailItem>();
  set words(ListBuilder<ProgressWordDetailItem>? words) =>
      _$this._words = words;

  ListBuilder<ProgressSentenceDetailItem>? _sentences;
  ListBuilder<ProgressSentenceDetailItem> get sentences =>
      _$this._sentences ??= new ListBuilder<ProgressSentenceDetailItem>();
  set sentences(ListBuilder<ProgressSentenceDetailItem>? sentences) =>
      _$this._sentences = sentences;

  ProgressDetailResponseBuilder() {
    ProgressDetailResponse._defaults(this);
  }

  ProgressDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _lessonId = $v.lessonId;
      _lessonName = $v.lessonName;
      _creatorName = $v.creatorName;
      _groupOwnerName = $v.groupOwnerName;
      _totalWord = $v.totalWord;
      _remainWord = $v.remainWord;
      _totalSentence = $v.totalSentence;
      _remainSentence = $v.remainSentence;
      _finishPercent = $v.finishPercent;
      _words = $v.words?.toBuilder();
      _sentences = $v.sentences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressDetailResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgressDetailResponse;
  }

  @override
  void update(void Function(ProgressDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgressDetailResponse build() => _build();

  _$ProgressDetailResponse _build() {
    _$ProgressDetailResponse _$result;
    try {
      _$result = _$v ??
          new _$ProgressDetailResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ProgressDetailResponse', 'id'),
              lessonId: BuiltValueNullFieldError.checkNotNull(
                  lessonId, r'ProgressDetailResponse', 'lessonId'),
              lessonName: lessonName,
              creatorName: creatorName,
              groupOwnerName: groupOwnerName,
              totalWord: totalWord,
              remainWord: remainWord,
              totalSentence: totalSentence,
              remainSentence: remainSentence,
              finishPercent: finishPercent,
              words: _words?.build(),
              sentences: _sentences?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'words';
        _words?.build();
        _$failedField = 'sentences';
        _sentences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProgressDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
