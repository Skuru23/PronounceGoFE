// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_person_lesson_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePersonLessonRequest extends CreatePersonLessonRequest {
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

  factory _$CreatePersonLessonRequest(
          [void Function(CreatePersonLessonRequestBuilder)? updates]) =>
      (new CreatePersonLessonRequestBuilder()..update(updates))._build();

  _$CreatePersonLessonRequest._(
      {required this.name,
      required this.isPublic,
      this.description,
      this.wordIds,
      this.sentenceList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreatePersonLessonRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, r'CreatePersonLessonRequest', 'isPublic');
  }

  @override
  CreatePersonLessonRequest rebuild(
          void Function(CreatePersonLessonRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePersonLessonRequestBuilder toBuilder() =>
      new CreatePersonLessonRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePersonLessonRequest &&
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
    return (newBuiltValueToStringHelper(r'CreatePersonLessonRequest')
          ..add('name', name)
          ..add('isPublic', isPublic)
          ..add('description', description)
          ..add('wordIds', wordIds)
          ..add('sentenceList', sentenceList))
        .toString();
  }
}

class CreatePersonLessonRequestBuilder
    implements
        Builder<CreatePersonLessonRequest, CreatePersonLessonRequestBuilder> {
  _$CreatePersonLessonRequest? _$v;

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

  CreatePersonLessonRequestBuilder() {
    CreatePersonLessonRequest._defaults(this);
  }

  CreatePersonLessonRequestBuilder get _$this {
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
  void replace(CreatePersonLessonRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePersonLessonRequest;
  }

  @override
  void update(void Function(CreatePersonLessonRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePersonLessonRequest build() => _build();

  _$CreatePersonLessonRequest _build() {
    _$CreatePersonLessonRequest _$result;
    try {
      _$result = _$v ??
          new _$CreatePersonLessonRequest._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreatePersonLessonRequest', 'name'),
              isPublic: BuiltValueNullFieldError.checkNotNull(
                  isPublic, r'CreatePersonLessonRequest', 'isPublic'),
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
            r'CreatePersonLessonRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
