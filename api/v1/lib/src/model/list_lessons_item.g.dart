// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_lessons_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListLessonsItem extends ListLessonsItem {
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? userOwnerId;
  @override
  final int? groupOwnerId;
  @override
  final String? imagePath;
  @override
  final bool? isPublic;
  @override
  final int? totalLikes;
  @override
  final int? totalLearners;
  @override
  final String? creator;

  factory _$ListLessonsItem([void Function(ListLessonsItemBuilder)? updates]) =>
      (new ListLessonsItemBuilder()..update(updates))._build();

  _$ListLessonsItem._(
      {required this.id,
      this.name,
      this.description,
      this.userOwnerId,
      this.groupOwnerId,
      this.imagePath,
      this.isPublic,
      this.totalLikes,
      this.totalLearners,
      this.creator})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ListLessonsItem', 'id');
  }

  @override
  ListLessonsItem rebuild(void Function(ListLessonsItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListLessonsItemBuilder toBuilder() =>
      new ListLessonsItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListLessonsItem &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        userOwnerId == other.userOwnerId &&
        groupOwnerId == other.groupOwnerId &&
        imagePath == other.imagePath &&
        isPublic == other.isPublic &&
        totalLikes == other.totalLikes &&
        totalLearners == other.totalLearners &&
        creator == other.creator;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userOwnerId.hashCode);
    _$hash = $jc(_$hash, groupOwnerId.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, totalLikes.hashCode);
    _$hash = $jc(_$hash, totalLearners.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListLessonsItem')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('userOwnerId', userOwnerId)
          ..add('groupOwnerId', groupOwnerId)
          ..add('imagePath', imagePath)
          ..add('isPublic', isPublic)
          ..add('totalLikes', totalLikes)
          ..add('totalLearners', totalLearners)
          ..add('creator', creator))
        .toString();
  }
}

class ListLessonsItemBuilder
    implements Builder<ListLessonsItem, ListLessonsItemBuilder> {
  _$ListLessonsItem? _$v;

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

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  int? _totalLikes;
  int? get totalLikes => _$this._totalLikes;
  set totalLikes(int? totalLikes) => _$this._totalLikes = totalLikes;

  int? _totalLearners;
  int? get totalLearners => _$this._totalLearners;
  set totalLearners(int? totalLearners) =>
      _$this._totalLearners = totalLearners;

  String? _creator;
  String? get creator => _$this._creator;
  set creator(String? creator) => _$this._creator = creator;

  ListLessonsItemBuilder() {
    ListLessonsItem._defaults(this);
  }

  ListLessonsItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _userOwnerId = $v.userOwnerId;
      _groupOwnerId = $v.groupOwnerId;
      _imagePath = $v.imagePath;
      _isPublic = $v.isPublic;
      _totalLikes = $v.totalLikes;
      _totalLearners = $v.totalLearners;
      _creator = $v.creator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListLessonsItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListLessonsItem;
  }

  @override
  void update(void Function(ListLessonsItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListLessonsItem build() => _build();

  _$ListLessonsItem _build() {
    final _$result = _$v ??
        new _$ListLessonsItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ListLessonsItem', 'id'),
            name: name,
            description: description,
            userOwnerId: userOwnerId,
            groupOwnerId: groupOwnerId,
            imagePath: imagePath,
            isPublic: isPublic,
            totalLikes: totalLikes,
            totalLearners: totalLearners,
            creator: creator);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
