// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_sentence_detail_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProgressSentenceDetailItem extends ProgressSentenceDetailItem {
  @override
  final int id;
  @override
  final int progressId;
  @override
  final int itemId;
  @override
  final ItemStatus? status;
  @override
  final String sentence;

  factory _$ProgressSentenceDetailItem(
          [void Function(ProgressSentenceDetailItemBuilder)? updates]) =>
      (new ProgressSentenceDetailItemBuilder()..update(updates))._build();

  _$ProgressSentenceDetailItem._(
      {required this.id,
      required this.progressId,
      required this.itemId,
      this.status,
      required this.sentence})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ProgressSentenceDetailItem', 'id');
    BuiltValueNullFieldError.checkNotNull(
        progressId, r'ProgressSentenceDetailItem', 'progressId');
    BuiltValueNullFieldError.checkNotNull(
        itemId, r'ProgressSentenceDetailItem', 'itemId');
    BuiltValueNullFieldError.checkNotNull(
        sentence, r'ProgressSentenceDetailItem', 'sentence');
  }

  @override
  ProgressSentenceDetailItem rebuild(
          void Function(ProgressSentenceDetailItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressSentenceDetailItemBuilder toBuilder() =>
      new ProgressSentenceDetailItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressSentenceDetailItem &&
        id == other.id &&
        progressId == other.progressId &&
        itemId == other.itemId &&
        status == other.status &&
        sentence == other.sentence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, progressId.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sentence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProgressSentenceDetailItem')
          ..add('id', id)
          ..add('progressId', progressId)
          ..add('itemId', itemId)
          ..add('status', status)
          ..add('sentence', sentence))
        .toString();
  }
}

class ProgressSentenceDetailItemBuilder
    implements
        Builder<ProgressSentenceDetailItem, ProgressSentenceDetailItemBuilder> {
  _$ProgressSentenceDetailItem? _$v;

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

  String? _sentence;
  String? get sentence => _$this._sentence;
  set sentence(String? sentence) => _$this._sentence = sentence;

  ProgressSentenceDetailItemBuilder() {
    ProgressSentenceDetailItem._defaults(this);
  }

  ProgressSentenceDetailItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _progressId = $v.progressId;
      _itemId = $v.itemId;
      _status = $v.status;
      _sentence = $v.sentence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressSentenceDetailItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgressSentenceDetailItem;
  }

  @override
  void update(void Function(ProgressSentenceDetailItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgressSentenceDetailItem build() => _build();

  _$ProgressSentenceDetailItem _build() {
    final _$result = _$v ??
        new _$ProgressSentenceDetailItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ProgressSentenceDetailItem', 'id'),
            progressId: BuiltValueNullFieldError.checkNotNull(
                progressId, r'ProgressSentenceDetailItem', 'progressId'),
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId, r'ProgressSentenceDetailItem', 'itemId'),
            status: status,
            sentence: BuiltValueNullFieldError.checkNotNull(
                sentence, r'ProgressSentenceDetailItem', 'sentence'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
