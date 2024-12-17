// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupBase extends GroupBase {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? ownerId;
  @override
  final String? imagePath;

  factory _$GroupBase([void Function(GroupBaseBuilder)? updates]) =>
      (new GroupBaseBuilder()..update(updates))._build();

  _$GroupBase._(
      {this.id, this.name, this.description, this.ownerId, this.imagePath})
      : super._();

  @override
  GroupBase rebuild(void Function(GroupBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBaseBuilder toBuilder() => new GroupBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupBase &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        ownerId == other.ownerId &&
        imagePath == other.imagePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupBase')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('ownerId', ownerId)
          ..add('imagePath', imagePath))
        .toString();
  }
}

class GroupBaseBuilder implements Builder<GroupBase, GroupBaseBuilder> {
  _$GroupBase? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _ownerId;
  int? get ownerId => _$this._ownerId;
  set ownerId(int? ownerId) => _$this._ownerId = ownerId;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  GroupBaseBuilder() {
    GroupBase._defaults(this);
  }

  GroupBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _ownerId = $v.ownerId;
      _imagePath = $v.imagePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupBase;
  }

  @override
  void update(void Function(GroupBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupBase build() => _build();

  _$GroupBase _build() {
    final _$result = _$v ??
        new _$GroupBase._(
            id: id,
            name: name,
            description: description,
            ownerId: ownerId,
            imagePath: imagePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
