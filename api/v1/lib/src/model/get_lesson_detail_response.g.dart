// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_lesson_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLessonDetailResponse extends GetLessonDetailResponse {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? userOwnerId;
  @override
  final int? groupOwnerId;
  @override
  final bool? isPublic;
  @override
  final String? imagePath;
  @override
  final String? creatorName;
  @override
  final bool? isInProgress;
  @override
  final bool? isLiked;
  @override
  final String? groupOwnerName;
  @override
  final BuiltList<WordBase>? words;
  @override
  final BuiltList<LessonSentenceBase>? sentences;

  factory _$GetLessonDetailResponse(
          [void Function(GetLessonDetailResponseBuilder)? updates]) =>
      (new GetLessonDetailResponseBuilder()..update(updates))._build();

  _$GetLessonDetailResponse._(
      {this.id,
      this.name,
      this.description,
      this.userOwnerId,
      this.groupOwnerId,
      this.isPublic,
      this.imagePath,
      this.creatorName,
      this.isInProgress,
      this.isLiked,
      this.groupOwnerName,
      this.words,
      this.sentences})
      : super._();

  @override
  GetLessonDetailResponse rebuild(
          void Function(GetLessonDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLessonDetailResponseBuilder toBuilder() =>
      new GetLessonDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLessonDetailResponse &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        userOwnerId == other.userOwnerId &&
        groupOwnerId == other.groupOwnerId &&
        isPublic == other.isPublic &&
        imagePath == other.imagePath &&
        creatorName == other.creatorName &&
        isInProgress == other.isInProgress &&
        isLiked == other.isLiked &&
        groupOwnerName == other.groupOwnerName &&
        words == other.words &&
        sentences == other.sentences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userOwnerId.hashCode);
    _$hash = $jc(_$hash, groupOwnerId.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, creatorName.hashCode);
    _$hash = $jc(_$hash, isInProgress.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, groupOwnerName.hashCode);
    _$hash = $jc(_$hash, words.hashCode);
    _$hash = $jc(_$hash, sentences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLessonDetailResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('userOwnerId', userOwnerId)
          ..add('groupOwnerId', groupOwnerId)
          ..add('isPublic', isPublic)
          ..add('imagePath', imagePath)
          ..add('creatorName', creatorName)
          ..add('isInProgress', isInProgress)
          ..add('isLiked', isLiked)
          ..add('groupOwnerName', groupOwnerName)
          ..add('words', words)
          ..add('sentences', sentences))
        .toString();
  }
}

class GetLessonDetailResponseBuilder
    implements
        Builder<GetLessonDetailResponse, GetLessonDetailResponseBuilder> {
  _$GetLessonDetailResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _userOwnerId;
  int? get userOwnerId => _$this._userOwnerId;
  set userOwnerId(int? userOwnerId) => _$this._userOwnerId = userOwnerId;

  int? _groupOwnerId;
  int? get groupOwnerId => _$this._groupOwnerId;
  set groupOwnerId(int? groupOwnerId) => _$this._groupOwnerId = groupOwnerId;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  String? _creatorName;
  String? get creatorName => _$this._creatorName;
  set creatorName(String? creatorName) => _$this._creatorName = creatorName;

  bool? _isInProgress;
  bool? get isInProgress => _$this._isInProgress;
  set isInProgress(bool? isInProgress) => _$this._isInProgress = isInProgress;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  String? _groupOwnerName;
  String? get groupOwnerName => _$this._groupOwnerName;
  set groupOwnerName(String? groupOwnerName) =>
      _$this._groupOwnerName = groupOwnerName;

  ListBuilder<WordBase>? _words;
  ListBuilder<WordBase> get words =>
      _$this._words ??= new ListBuilder<WordBase>();
  set words(ListBuilder<WordBase>? words) => _$this._words = words;

  ListBuilder<LessonSentenceBase>? _sentences;
  ListBuilder<LessonSentenceBase> get sentences =>
      _$this._sentences ??= new ListBuilder<LessonSentenceBase>();
  set sentences(ListBuilder<LessonSentenceBase>? sentences) =>
      _$this._sentences = sentences;

  GetLessonDetailResponseBuilder() {
    GetLessonDetailResponse._defaults(this);
  }

  GetLessonDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _userOwnerId = $v.userOwnerId;
      _groupOwnerId = $v.groupOwnerId;
      _isPublic = $v.isPublic;
      _imagePath = $v.imagePath;
      _creatorName = $v.creatorName;
      _isInProgress = $v.isInProgress;
      _isLiked = $v.isLiked;
      _groupOwnerName = $v.groupOwnerName;
      _words = $v.words?.toBuilder();
      _sentences = $v.sentences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLessonDetailResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLessonDetailResponse;
  }

  @override
  void update(void Function(GetLessonDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLessonDetailResponse build() => _build();

  _$GetLessonDetailResponse _build() {
    _$GetLessonDetailResponse _$result;
    try {
      _$result = _$v ??
          new _$GetLessonDetailResponse._(
              id: id,
              name: name,
              description: description,
              userOwnerId: userOwnerId,
              groupOwnerId: groupOwnerId,
              isPublic: isPublic,
              imagePath: imagePath,
              creatorName: creatorName,
              isInProgress: isInProgress,
              isLiked: isLiked,
              groupOwnerName: groupOwnerName,
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
            r'GetLessonDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
