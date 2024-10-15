// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenResponse extends TokenResponse {
  @override
  final String tokenType;
  @override
  final String accessToken;
  @override
  final DateTime expireAt;
  @override
  final String refreshToken;
  @override
  final DateTime refreshExpireAt;

  factory _$TokenResponse([void Function(TokenResponseBuilder)? updates]) =>
      (new TokenResponseBuilder()..update(updates))._build();

  _$TokenResponse._(
      {required this.tokenType,
      required this.accessToken,
      required this.expireAt,
      required this.refreshToken,
      required this.refreshExpireAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenType, r'TokenResponse', 'tokenType');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'TokenResponse', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        expireAt, r'TokenResponse', 'expireAt');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'TokenResponse', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshExpireAt, r'TokenResponse', 'refreshExpireAt');
  }

  @override
  TokenResponse rebuild(void Function(TokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenResponseBuilder toBuilder() => new TokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenResponse &&
        tokenType == other.tokenType &&
        accessToken == other.accessToken &&
        expireAt == other.expireAt &&
        refreshToken == other.refreshToken &&
        refreshExpireAt == other.refreshExpireAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expireAt.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, refreshExpireAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenResponse')
          ..add('tokenType', tokenType)
          ..add('accessToken', accessToken)
          ..add('expireAt', expireAt)
          ..add('refreshToken', refreshToken)
          ..add('refreshExpireAt', refreshExpireAt))
        .toString();
  }
}

class TokenResponseBuilder
    implements Builder<TokenResponse, TokenResponseBuilder> {
  _$TokenResponse? _$v;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  DateTime? _expireAt;
  DateTime? get expireAt => _$this._expireAt;
  set expireAt(DateTime? expireAt) => _$this._expireAt = expireAt;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  DateTime? _refreshExpireAt;
  DateTime? get refreshExpireAt => _$this._refreshExpireAt;
  set refreshExpireAt(DateTime? refreshExpireAt) =>
      _$this._refreshExpireAt = refreshExpireAt;

  TokenResponseBuilder() {
    TokenResponse._defaults(this);
  }

  TokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenType = $v.tokenType;
      _accessToken = $v.accessToken;
      _expireAt = $v.expireAt;
      _refreshToken = $v.refreshToken;
      _refreshExpireAt = $v.refreshExpireAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenResponse;
  }

  @override
  void update(void Function(TokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenResponse build() => _build();

  _$TokenResponse _build() {
    final _$result = _$v ??
        new _$TokenResponse._(
            tokenType: BuiltValueNullFieldError.checkNotNull(
                tokenType, r'TokenResponse', 'tokenType'),
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'TokenResponse', 'accessToken'),
            expireAt: BuiltValueNullFieldError.checkNotNull(
                expireAt, r'TokenResponse', 'expireAt'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'TokenResponse', 'refreshToken'),
            refreshExpireAt: BuiltValueNullFieldError.checkNotNull(
                refreshExpireAt, r'TokenResponse', 'refreshExpireAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
