// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupItem extends GetGroupItem {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? ownerId;
  @override
  final int? totalMember;
  @override
  final int? totalLesson;
  @override
  final int? totalLike;

  factory _$GetGroupItem([void Function(GetGroupItemBuilder)? updates]) =>
      (new GetGroupItemBuilder()..update(updates))._build();

  _$GetGroupItem._(
      {this.id,
      this.name,
      this.description,
      this.ownerId,
      this.totalMember,
      this.totalLesson,
      this.totalLike})
      : super._();

  @override
  GetGroupItem rebuild(void Function(GetGroupItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupItemBuilder toBuilder() => new GetGroupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupItem &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        ownerId == other.ownerId &&
        totalMember == other.totalMember &&
        totalLesson == other.totalLesson &&
        totalLike == other.totalLike;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, totalMember.hashCode);
    _$hash = $jc(_$hash, totalLesson.hashCode);
    _$hash = $jc(_$hash, totalLike.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetGroupItem')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('ownerId', ownerId)
          ..add('totalMember', totalMember)
          ..add('totalLesson', totalLesson)
          ..add('totalLike', totalLike))
        .toString();
  }
}

class GetGroupItemBuilder
    implements Builder<GetGroupItem, GetGroupItemBuilder> {
  _$GetGroupItem? _$v;

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

  int? _totalMember;
  int? get totalMember => _$this._totalMember;
  set totalMember(int? totalMember) => _$this._totalMember = totalMember;

  int? _totalLesson;
  int? get totalLesson => _$this._totalLesson;
  set totalLesson(int? totalLesson) => _$this._totalLesson = totalLesson;

  int? _totalLike;
  int? get totalLike => _$this._totalLike;
  set totalLike(int? totalLike) => _$this._totalLike = totalLike;

  GetGroupItemBuilder() {
    GetGroupItem._defaults(this);
  }

  GetGroupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _ownerId = $v.ownerId;
      _totalMember = $v.totalMember;
      _totalLesson = $v.totalLesson;
      _totalLike = $v.totalLike;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupItem;
  }

  @override
  void update(void Function(GetGroupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupItem build() => _build();

  _$GetGroupItem _build() {
    final _$result = _$v ??
        new _$GetGroupItem._(
            id: id,
            name: name,
            description: description,
            ownerId: ownerId,
            totalMember: totalMember,
            totalLesson: totalLesson,
            totalLike: totalLike);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
