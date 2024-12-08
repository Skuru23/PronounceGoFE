// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_lesson_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateLessonRequest extends UpdateLessonRequest {
  @override
  final String name;
  @override
  final bool isPublic;
  @override
  final String? description;
  @override
  final BuiltList<int>? wordIds;
  @override
  final BuiltList<String>? sentenceList;

  factory _$UpdateLessonRequest(
          [void Function(UpdateLessonRequestBuilder)? updates]) =>
      (new UpdateLessonRequestBuilder()..update(updates))._build();

  _$UpdateLessonRequest._(
      {required this.name,
      required this.isPublic,
      this.description,
      this.wordIds,
      this.sentenceList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UpdateLessonRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, r'UpdateLessonRequest', 'isPublic');
  }

  @override
  UpdateLessonRequest rebuild(
          void Function(UpdateLessonRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLessonRequestBuilder toBuilder() =>
      new UpdateLessonRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLessonRequest &&
        name == other.name &&
        isPublic == other.isPublic &&
        description == other.description &&
        wordIds == other.wordIds &&
        sentenceList == other.sentenceList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, wordIds.hashCode);
    _$hash = $jc(_$hash, sentenceList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateLessonRequest')
          ..add('name', name)
          ..add('isPublic', isPublic)
          ..add('description', description)
          ..add('wordIds', wordIds)
          ..add('sentenceList', sentenceList))
        .toString();
  }
}

class UpdateLessonRequestBuilder
    implements Builder<UpdateLessonRequest, UpdateLessonRequestBuilder> {
  _$UpdateLessonRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<int>? _wordIds;
  ListBuilder<int> get wordIds => _$this._wordIds ??= new ListBuilder<int>();
  set wordIds(ListBuilder<int>? wordIds) => _$this._wordIds = wordIds;

  ListBuilder<String>? _sentenceList;
  ListBuilder<String> get sentenceList =>
      _$this._sentenceList ??= new ListBuilder<String>();
  set sentenceList(ListBuilder<String>? sentenceList) =>
      _$this._sentenceList = sentenceList;

  UpdateLessonRequestBuilder() {
    UpdateLessonRequest._defaults(this);
  }

  UpdateLessonRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isPublic = $v.isPublic;
      _description = $v.description;
      _wordIds = $v.wordIds?.toBuilder();
      _sentenceList = $v.sentenceList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLessonRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateLessonRequest;
  }

  @override
  void update(void Function(UpdateLessonRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLessonRequest build() => _build();

  _$UpdateLessonRequest _build() {
    _$UpdateLessonRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateLessonRequest._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'UpdateLessonRequest', 'name'),
              isPublic: BuiltValueNullFieldError.checkNotNull(
                  isPublic, r'UpdateLessonRequest', 'isPublic'),
              description: description,
              wordIds: _wordIds?.build(),
              sentenceList: _sentenceList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wordIds';
        _wordIds?.build();
        _$failedField = 'sentenceList';
        _sentenceList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateLessonRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
