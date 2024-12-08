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
  final int? groupOwnerId;
  @override
  final BuiltList<int>? wordIds;
  @override
  final BuiltList<String>? sentenceList;
  @override
  final String? imagePath;

  factory _$CreatePersonLessonRequest(
          [void Function(CreatePersonLessonRequestBuilder)? updates]) =>
      (new CreatePersonLessonRequestBuilder()..update(updates))._build();

  _$CreatePersonLessonRequest._(
      {required this.name,
      required this.isPublic,
      this.description,
      this.groupOwnerId,
      this.wordIds,
      this.sentenceList,
      this.imagePath})
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
        groupOwnerId == other.groupOwnerId &&
        wordIds == other.wordIds &&
        sentenceList == other.sentenceList &&
        imagePath == other.imagePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groupOwnerId.hashCode);
    _$hash = $jc(_$hash, wordIds.hashCode);
    _$hash = $jc(_$hash, sentenceList.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePersonLessonRequest')
          ..add('name', name)
          ..add('isPublic', isPublic)
          ..add('description', description)
          ..add('groupOwnerId', groupOwnerId)
          ..add('wordIds', wordIds)
          ..add('sentenceList', sentenceList)
          ..add('imagePath', imagePath))
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

  int? _groupOwnerId;
  int? get groupOwnerId => _$this._groupOwnerId;
  set groupOwnerId(int? groupOwnerId) => _$this._groupOwnerId = groupOwnerId;

  ListBuilder<int>? _wordIds;
  ListBuilder<int> get wordIds => _$this._wordIds ??= new ListBuilder<int>();
  set wordIds(ListBuilder<int>? wordIds) => _$this._wordIds = wordIds;

  ListBuilder<String>? _sentenceList;
  ListBuilder<String> get sentenceList =>
      _$this._sentenceList ??= new ListBuilder<String>();
  set sentenceList(ListBuilder<String>? sentenceList) =>
      _$this._sentenceList = sentenceList;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  CreatePersonLessonRequestBuilder() {
    CreatePersonLessonRequest._defaults(this);
  }

  CreatePersonLessonRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isPublic = $v.isPublic;
      _description = $v.description;
      _groupOwnerId = $v.groupOwnerId;
      _wordIds = $v.wordIds?.toBuilder();
      _sentenceList = $v.sentenceList?.toBuilder();
      _imagePath = $v.imagePath;
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
              groupOwnerId: groupOwnerId,
              wordIds: _wordIds?.build(),
              sentenceList: _sentenceList?.build(),
              imagePath: imagePath);
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
