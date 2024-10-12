// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignupRequest extends SignupRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String address;

  factory _$SignupRequest([void Function(SignupRequestBuilder)? updates]) =>
      (new SignupRequestBuilder()..update(updates))._build();

  _$SignupRequest._(
      {required this.email,
      required this.password,
      required this.name,
      required this.phone,
      required this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'SignupRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'SignupRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(name, r'SignupRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(phone, r'SignupRequest', 'phone');
    BuiltValueNullFieldError.checkNotNull(address, r'SignupRequest', 'address');
  }

  @override
  SignupRequest rebuild(void Function(SignupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupRequestBuilder toBuilder() => new SignupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupRequest &&
        email == other.email &&
        password == other.password &&
        name == other.name &&
        phone == other.phone &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignupRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('name', name)
          ..add('phone', phone)
          ..add('address', address))
        .toString();
  }
}

class SignupRequestBuilder
    implements Builder<SignupRequest, SignupRequestBuilder> {
  _$SignupRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  SignupRequestBuilder() {
    SignupRequest._defaults(this);
  }

  SignupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _name = $v.name;
      _phone = $v.phone;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignupRequest;
  }

  @override
  void update(void Function(SignupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignupRequest build() => _build();

  _$SignupRequest _build() {
    final _$result = _$v ??
        new _$SignupRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'SignupRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'SignupRequest', 'password'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SignupRequest', 'name'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'SignupRequest', 'phone'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'SignupRequest', 'address'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
