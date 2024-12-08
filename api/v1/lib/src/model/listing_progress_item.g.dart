// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_progress_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListingProgressItem extends ListingProgressItem {
  @override
  final int id;
  @override
  final int lessonId;
  @override
  final String? lessonName;
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

  factory _$ListingProgressItem(
          [void Function(ListingProgressItemBuilder)? updates]) =>
      (new ListingProgressItemBuilder()..update(updates))._build();

  _$ListingProgressItem._(
      {required this.id,
      required this.lessonId,
      this.lessonName,
      this.totalWord,
      this.remainWord,
      this.totalSentence,
      this.remainSentence,
      this.finishPercent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ListingProgressItem', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lessonId, r'ListingProgressItem', 'lessonId');
  }

  @override
  ListingProgressItem rebuild(
          void Function(ListingProgressItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingProgressItemBuilder toBuilder() =>
      new ListingProgressItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingProgressItem &&
        id == other.id &&
        lessonId == other.lessonId &&
        lessonName == other.lessonName &&
        totalWord == other.totalWord &&
        remainWord == other.remainWord &&
        totalSentence == other.totalSentence &&
        remainSentence == other.remainSentence &&
        finishPercent == other.finishPercent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lessonId.hashCode);
    _$hash = $jc(_$hash, lessonName.hashCode);
    _$hash = $jc(_$hash, totalWord.hashCode);
    _$hash = $jc(_$hash, remainWord.hashCode);
    _$hash = $jc(_$hash, totalSentence.hashCode);
    _$hash = $jc(_$hash, remainSentence.hashCode);
    _$hash = $jc(_$hash, finishPercent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingProgressItem')
          ..add('id', id)
          ..add('lessonId', lessonId)
          ..add('lessonName', lessonName)
          ..add('totalWord', totalWord)
          ..add('remainWord', remainWord)
          ..add('totalSentence', totalSentence)
          ..add('remainSentence', remainSentence)
          ..add('finishPercent', finishPercent))
        .toString();
  }
}

class ListingProgressItemBuilder
    implements Builder<ListingProgressItem, ListingProgressItemBuilder> {
  _$ListingProgressItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _lessonId;
  int? get lessonId => _$this._lessonId;
  set lessonId(int? lessonId) => _$this._lessonId = lessonId;

  String? _lessonName;
  String? get lessonName => _$this._lessonName;
  set lessonName(String? lessonName) => _$this._lessonName = lessonName;

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

  ListingProgressItemBuilder() {
    ListingProgressItem._defaults(this);
  }

  ListingProgressItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _lessonId = $v.lessonId;
      _lessonName = $v.lessonName;
      _totalWord = $v.totalWord;
      _remainWord = $v.remainWord;
      _totalSentence = $v.totalSentence;
      _remainSentence = $v.remainSentence;
      _finishPercent = $v.finishPercent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingProgressItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingProgressItem;
  }

  @override
  void update(void Function(ListingProgressItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingProgressItem build() => _build();

  _$ListingProgressItem _build() {
    final _$result = _$v ??
        new _$ListingProgressItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ListingProgressItem', 'id'),
            lessonId: BuiltValueNullFieldError.checkNotNull(
                lessonId, r'ListingProgressItem', 'lessonId'),
            lessonName: lessonName,
            totalWord: totalWord,
            remainWord: remainWord,
            totalSentence: totalSentence,
            remainSentence: remainSentence,
            finishPercent: finishPercent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
