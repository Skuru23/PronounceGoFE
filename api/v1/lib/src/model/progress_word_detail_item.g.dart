// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_word_detail_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProgressWordDetailItem extends ProgressWordDetailItem {
  @override
  final int id;
  @override
  final int progressId;
  @override
  final int itemId;
  @override
  final ItemStatus? status;
  @override
  final int wordId;
  @override
  final String word;
  @override
  final String? ipa;

  factory _$ProgressWordDetailItem(
          [void Function(ProgressWordDetailItemBuilder)? updates]) =>
      (new ProgressWordDetailItemBuilder()..update(updates))._build();

  _$ProgressWordDetailItem._(
      {required this.id,
      required this.progressId,
      required this.itemId,
      this.status,
      required this.wordId,
      required this.word,
      this.ipa})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ProgressWordDetailItem', 'id');
    BuiltValueNullFieldError.checkNotNull(
        progressId, r'ProgressWordDetailItem', 'progressId');
    BuiltValueNullFieldError.checkNotNull(
        itemId, r'ProgressWordDetailItem', 'itemId');
    BuiltValueNullFieldError.checkNotNull(
        wordId, r'ProgressWordDetailItem', 'wordId');
    BuiltValueNullFieldError.checkNotNull(
        word, r'ProgressWordDetailItem', 'word');
  }

  @override
  ProgressWordDetailItem rebuild(
          void Function(ProgressWordDetailItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressWordDetailItemBuilder toBuilder() =>
      new ProgressWordDetailItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressWordDetailItem &&
        id == other.id &&
        progressId == other.progressId &&
        itemId == other.itemId &&
        status == other.status &&
        wordId == other.wordId &&
        word == other.word &&
        ipa == other.ipa;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, progressId.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, wordId.hashCode);
    _$hash = $jc(_$hash, word.hashCode);
    _$hash = $jc(_$hash, ipa.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProgressWordDetailItem')
          ..add('id', id)
          ..add('progressId', progressId)
          ..add('itemId', itemId)
          ..add('status', status)
          ..add('wordId', wordId)
          ..add('word', word)
          ..add('ipa', ipa))
        .toString();
  }
}

class ProgressWordDetailItemBuilder
    implements Builder<ProgressWordDetailItem, ProgressWordDetailItemBuilder> {
  _$ProgressWordDetailItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _progressId;
  int? get progressId => _$this._progressId;
  set progressId(int? progressId) => _$this._progressId = progressId;

  int? _itemId;
  int? get itemId => _$this._itemId;
  set itemId(int? itemId) => _$this._itemId = itemId;

  ItemStatus? _status;
  ItemStatus? get status => _$this._status;
  set status(ItemStatus? status) => _$this._status = status;

  int? _wordId;
  int? get wordId => _$this._wordId;
  set wordId(int? wordId) => _$this._wordId = wordId;

  String? _word;
  String? get word => _$this._word;
  set word(String? word) => _$this._word = word;

  String? _ipa;
  String? get ipa => _$this._ipa;
  set ipa(String? ipa) => _$this._ipa = ipa;

  ProgressWordDetailItemBuilder() {
    ProgressWordDetailItem._defaults(this);
  }

  ProgressWordDetailItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _progressId = $v.progressId;
      _itemId = $v.itemId;
      _status = $v.status;
      _wordId = $v.wordId;
      _word = $v.word;
      _ipa = $v.ipa;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressWordDetailItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgressWordDetailItem;
  }

  @override
  void update(void Function(ProgressWordDetailItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgressWordDetailItem build() => _build();

  _$ProgressWordDetailItem _build() {
    final _$result = _$v ??
        new _$ProgressWordDetailItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ProgressWordDetailItem', 'id'),
            progressId: BuiltValueNullFieldError.checkNotNull(
                progressId, r'ProgressWordDetailItem', 'progressId'),
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId, r'ProgressWordDetailItem', 'itemId'),
            status: status,
            wordId: BuiltValueNullFieldError.checkNotNull(
                wordId, r'ProgressWordDetailItem', 'wordId'),
            word: BuiltValueNullFieldError.checkNotNull(
                word, r'ProgressWordDetailItem', 'word'),
            ipa: ipa);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
