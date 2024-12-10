// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupMemberItem extends GroupMemberItem {
  @override
  final int id;
  @override
  final int userId;
  @override
  final String? name;
  @override
  final bool isManager;
  @override
  final DateTime? approvedAt;

  factory _$GroupMemberItem([void Function(GroupMemberItemBuilder)? updates]) =>
      (new GroupMemberItemBuilder()..update(updates))._build();

  _$GroupMemberItem._(
      {required this.id,
      required this.userId,
      this.name,
      required this.isManager,
      this.approvedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GroupMemberItem', 'id');
    BuiltValueNullFieldError.checkNotNull(userId, r'GroupMemberItem', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        isManager, r'GroupMemberItem', 'isManager');
  }

  @override
  GroupMemberItem rebuild(void Function(GroupMemberItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupMemberItemBuilder toBuilder() =>
      new GroupMemberItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupMemberItem &&
        id == other.id &&
        userId == other.userId &&
        name == other.name &&
        isManager == other.isManager &&
        approvedAt == other.approvedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isManager.hashCode);
    _$hash = $jc(_$hash, approvedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupMemberItem')
          ..add('id', id)
          ..add('userId', userId)
          ..add('name', name)
          ..add('isManager', isManager)
          ..add('approvedAt', approvedAt))
        .toString();
  }
}

class GroupMemberItemBuilder
    implements Builder<GroupMemberItem, GroupMemberItemBuilder> {
  _$GroupMemberItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isManager;
  bool? get isManager => _$this._isManager;
  set isManager(bool? isManager) => _$this._isManager = isManager;

  DateTime? _approvedAt;
  DateTime? get approvedAt => _$this._approvedAt;
  set approvedAt(DateTime? approvedAt) => _$this._approvedAt = approvedAt;

  GroupMemberItemBuilder() {
    GroupMemberItem._defaults(this);
  }

  GroupMemberItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _name = $v.name;
      _isManager = $v.isManager;
      _approvedAt = $v.approvedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupMemberItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupMemberItem;
  }

  @override
  void update(void Function(GroupMemberItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupMemberItem build() => _build();

  _$GroupMemberItem _build() {
    final _$result = _$v ??
        new _$GroupMemberItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GroupMemberItem', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GroupMemberItem', 'userId'),
            name: name,
            isManager: BuiltValueNullFieldError.checkNotNull(
                isManager, r'GroupMemberItem', 'isManager'),
            approvedAt: approvedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
