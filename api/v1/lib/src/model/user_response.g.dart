// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResponse extends UserResponse {
  @override
  final int? id;
  @override
  final RoleCode? roleCode;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? imagePath;
  @override
  final int? totalProgress;
  @override
  final int? remainProgress;
  @override
  final int? doneProgress;
  @override
  final int? notStartProgress;
  @override
  final int? totalLesson;
  @override
  final int? joinedGroup;

  factory _$UserResponse([void Function(UserResponseBuilder)? updates]) =>
      (new UserResponseBuilder()..update(updates))._build();

  _$UserResponse._(
      {this.id,
      this.roleCode,
      this.email,
      this.name,
      this.phone,
      this.address,
      this.imagePath,
      this.totalProgress,
      this.remainProgress,
      this.doneProgress,
      this.notStartProgress,
      this.totalLesson,
      this.joinedGroup})
      : super._();

  @override
  UserResponse rebuild(void Function(UserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseBuilder toBuilder() => new UserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponse &&
        id == other.id &&
        roleCode == other.roleCode &&
        email == other.email &&
        name == other.name &&
        phone == other.phone &&
        address == other.address &&
        imagePath == other.imagePath &&
        totalProgress == other.totalProgress &&
        remainProgress == other.remainProgress &&
        doneProgress == other.doneProgress &&
        notStartProgress == other.notStartProgress &&
        totalLesson == other.totalLesson &&
        joinedGroup == other.joinedGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, roleCode.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, totalProgress.hashCode);
    _$hash = $jc(_$hash, remainProgress.hashCode);
    _$hash = $jc(_$hash, doneProgress.hashCode);
    _$hash = $jc(_$hash, notStartProgress.hashCode);
    _$hash = $jc(_$hash, totalLesson.hashCode);
    _$hash = $jc(_$hash, joinedGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResponse')
          ..add('id', id)
          ..add('roleCode', roleCode)
          ..add('email', email)
          ..add('name', name)
          ..add('phone', phone)
          ..add('address', address)
          ..add('imagePath', imagePath)
          ..add('totalProgress', totalProgress)
          ..add('remainProgress', remainProgress)
          ..add('doneProgress', doneProgress)
          ..add('notStartProgress', notStartProgress)
          ..add('totalLesson', totalLesson)
          ..add('joinedGroup', joinedGroup))
        .toString();
  }
}

class UserResponseBuilder
    implements Builder<UserResponse, UserResponseBuilder> {
  _$UserResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  RoleCode? _roleCode;
  RoleCode? get roleCode => _$this._roleCode;
  set roleCode(RoleCode? roleCode) => _$this._roleCode = roleCode;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  int? _totalProgress;
  int? get totalProgress => _$this._totalProgress;
  set totalProgress(int? totalProgress) =>
      _$this._totalProgress = totalProgress;

  int? _remainProgress;
  int? get remainProgress => _$this._remainProgress;
  set remainProgress(int? remainProgress) =>
      _$this._remainProgress = remainProgress;

  int? _doneProgress;
  int? get doneProgress => _$this._doneProgress;
  set doneProgress(int? doneProgress) => _$this._doneProgress = doneProgress;

  int? _notStartProgress;
  int? get notStartProgress => _$this._notStartProgress;
  set notStartProgress(int? notStartProgress) =>
      _$this._notStartProgress = notStartProgress;

  int? _totalLesson;
  int? get totalLesson => _$this._totalLesson;
  set totalLesson(int? totalLesson) => _$this._totalLesson = totalLesson;

  int? _joinedGroup;
  int? get joinedGroup => _$this._joinedGroup;
  set joinedGroup(int? joinedGroup) => _$this._joinedGroup = joinedGroup;

  UserResponseBuilder() {
    UserResponse._defaults(this);
  }

  UserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _roleCode = $v.roleCode;
      _email = $v.email;
      _name = $v.name;
      _phone = $v.phone;
      _address = $v.address;
      _imagePath = $v.imagePath;
      _totalProgress = $v.totalProgress;
      _remainProgress = $v.remainProgress;
      _doneProgress = $v.doneProgress;
      _notStartProgress = $v.notStartProgress;
      _totalLesson = $v.totalLesson;
      _joinedGroup = $v.joinedGroup;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResponse;
  }

  @override
  void update(void Function(UserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponse build() => _build();

  _$UserResponse _build() {
    final _$result = _$v ??
        new _$UserResponse._(
            id: id,
            roleCode: roleCode,
            email: email,
            name: name,
            phone: phone,
            address: address,
            imagePath: imagePath,
            totalProgress: totalProgress,
            remainProgress: remainProgress,
            doneProgress: doneProgress,
            notStartProgress: notStartProgress,
            totalLesson: totalLesson,
            joinedGroup: joinedGroup);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
