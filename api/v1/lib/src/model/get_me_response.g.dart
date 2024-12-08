// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_me_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMeResponse extends GetMeResponse {
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

  factory _$GetMeResponse([void Function(GetMeResponseBuilder)? updates]) =>
      (new GetMeResponseBuilder()..update(updates))._build();

  _$GetMeResponse._(
      {this.id,
      this.roleCode,
      this.email,
      this.name,
      this.phone,
      this.address,
      this.imagePath})
      : super._();

  @override
  GetMeResponse rebuild(void Function(GetMeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMeResponseBuilder toBuilder() => new GetMeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMeResponse &&
        id == other.id &&
        roleCode == other.roleCode &&
        email == other.email &&
        name == other.name &&
        phone == other.phone &&
        address == other.address &&
        imagePath == other.imagePath;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMeResponse')
          ..add('id', id)
          ..add('roleCode', roleCode)
          ..add('email', email)
          ..add('name', name)
          ..add('phone', phone)
          ..add('address', address)
          ..add('imagePath', imagePath))
        .toString();
  }
}

class GetMeResponseBuilder
    implements Builder<GetMeResponse, GetMeResponseBuilder> {
  _$GetMeResponse? _$v;

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

  GetMeResponseBuilder() {
    GetMeResponse._defaults(this);
  }

  GetMeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _roleCode = $v.roleCode;
      _email = $v.email;
      _name = $v.name;
      _phone = $v.phone;
      _address = $v.address;
      _imagePath = $v.imagePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMeResponse;
  }

  @override
  void update(void Function(GetMeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMeResponse build() => _build();

  _$GetMeResponse _build() {
    final _$result = _$v ??
        new _$GetMeResponse._(
            id: id,
            roleCode: roleCode,
            email: email,
            name: name,
            phone: phone,
            address: address,
            imagePath: imagePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
