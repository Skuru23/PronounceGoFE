// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupDetailResponse extends GetGroupDetailResponse {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? ownerId;
  @override
  final String creator;
  @override
  final String? imagePath;
  @override
  final int? totalMember;
  @override
  final int? totalLesson;
  @override
  final int? totalLike;
  @override
  final bool? isMember;
  @override
  final bool? isOwner;

  factory _$GetGroupDetailResponse(
          [void Function(GetGroupDetailResponseBuilder)? updates]) =>
      (new GetGroupDetailResponseBuilder()..update(updates))._build();

  _$GetGroupDetailResponse._(
      {this.id,
      this.name,
      this.description,
      this.ownerId,
      required this.creator,
      this.imagePath,
      this.totalMember,
      this.totalLesson,
      this.totalLike,
      this.isMember,
      this.isOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        creator, r'GetGroupDetailResponse', 'creator');
  }

  @override
  GetGroupDetailResponse rebuild(
          void Function(GetGroupDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupDetailResponseBuilder toBuilder() =>
      new GetGroupDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupDetailResponse &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        ownerId == other.ownerId &&
        creator == other.creator &&
        imagePath == other.imagePath &&
        totalMember == other.totalMember &&
        totalLesson == other.totalLesson &&
        totalLike == other.totalLike &&
        isMember == other.isMember &&
        isOwner == other.isOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, totalMember.hashCode);
    _$hash = $jc(_$hash, totalLesson.hashCode);
    _$hash = $jc(_$hash, totalLike.hashCode);
    _$hash = $jc(_$hash, isMember.hashCode);
    _$hash = $jc(_$hash, isOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetGroupDetailResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('ownerId', ownerId)
          ..add('creator', creator)
          ..add('imagePath', imagePath)
          ..add('totalMember', totalMember)
          ..add('totalLesson', totalLesson)
          ..add('totalLike', totalLike)
          ..add('isMember', isMember)
          ..add('isOwner', isOwner))
        .toString();
  }
}

class GetGroupDetailResponseBuilder
    implements Builder<GetGroupDetailResponse, GetGroupDetailResponseBuilder> {
  _$GetGroupDetailResponse? _$v;

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

  String? _creator;
  String? get creator => _$this._creator;
  set creator(String? creator) => _$this._creator = creator;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  int? _totalMember;
  int? get totalMember => _$this._totalMember;
  set totalMember(int? totalMember) => _$this._totalMember = totalMember;

  int? _totalLesson;
  int? get totalLesson => _$this._totalLesson;
  set totalLesson(int? totalLesson) => _$this._totalLesson = totalLesson;

  int? _totalLike;
  int? get totalLike => _$this._totalLike;
  set totalLike(int? totalLike) => _$this._totalLike = totalLike;

  bool? _isMember;
  bool? get isMember => _$this._isMember;
  set isMember(bool? isMember) => _$this._isMember = isMember;

  bool? _isOwner;
  bool? get isOwner => _$this._isOwner;
  set isOwner(bool? isOwner) => _$this._isOwner = isOwner;

  GetGroupDetailResponseBuilder() {
    GetGroupDetailResponse._defaults(this);
  }

  GetGroupDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _ownerId = $v.ownerId;
      _creator = $v.creator;
      _imagePath = $v.imagePath;
      _totalMember = $v.totalMember;
      _totalLesson = $v.totalLesson;
      _totalLike = $v.totalLike;
      _isMember = $v.isMember;
      _isOwner = $v.isOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupDetailResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupDetailResponse;
  }

  @override
  void update(void Function(GetGroupDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupDetailResponse build() => _build();

  _$GetGroupDetailResponse _build() {
    final _$result = _$v ??
        new _$GetGroupDetailResponse._(
            id: id,
            name: name,
            description: description,
            ownerId: ownerId,
            creator: BuiltValueNullFieldError.checkNotNull(
                creator, r'GetGroupDetailResponse', 'creator'),
            imagePath: imagePath,
            totalMember: totalMember,
            totalLesson: totalLesson,
            totalLike: totalLike,
            isMember: isMember,
            isOwner: isOwner);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
