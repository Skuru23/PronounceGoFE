// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LessonBase extends LessonBase {
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

  factory _$LessonBase([void Function(LessonBaseBuilder)? updates]) =>
      (new LessonBaseBuilder()..update(updates))._build();

  _$LessonBase._(
      {this.id,
      this.name,
      this.description,
      this.userOwnerId,
      this.groupOwnerId,
      this.isPublic,
      this.imagePath})
      : super._();

  @override
  LessonBase rebuild(void Function(LessonBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonBaseBuilder toBuilder() => new LessonBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonBase &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        userOwnerId == other.userOwnerId &&
        groupOwnerId == other.groupOwnerId &&
        isPublic == other.isPublic &&
        imagePath == other.imagePath;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LessonBase')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('userOwnerId', userOwnerId)
          ..add('groupOwnerId', groupOwnerId)
          ..add('isPublic', isPublic)
          ..add('imagePath', imagePath))
        .toString();
  }
}

class LessonBaseBuilder implements Builder<LessonBase, LessonBaseBuilder> {
  _$LessonBase? _$v;

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

  LessonBaseBuilder() {
    LessonBase._defaults(this);
  }

  LessonBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _userOwnerId = $v.userOwnerId;
      _groupOwnerId = $v.groupOwnerId;
      _isPublic = $v.isPublic;
      _imagePath = $v.imagePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LessonBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LessonBase;
  }

  @override
  void update(void Function(LessonBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LessonBase build() => _build();

  _$LessonBase _build() {
    final _$result = _$v ??
        new _$LessonBase._(
            id: id,
            name: name,
            description: description,
            userOwnerId: userOwnerId,
            groupOwnerId: groupOwnerId,
            isPublic: isPublic,
            imagePath: imagePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
