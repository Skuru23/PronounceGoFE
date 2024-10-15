// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response401.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorResponse401 extends ErrorResponse401 {
  @override
  final String errorCode;
  @override
  final String message;
  @override
  final String debugInfo;

  factory _$ErrorResponse401(
          [void Function(ErrorResponse401Builder)? updates]) =>
      (new ErrorResponse401Builder()..update(updates))._build();

  _$ErrorResponse401._(
      {required this.errorCode, required this.message, required this.debugInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        errorCode, r'ErrorResponse401', 'errorCode');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ErrorResponse401', 'message');
    BuiltValueNullFieldError.checkNotNull(
        debugInfo, r'ErrorResponse401', 'debugInfo');
  }

  @override
  ErrorResponse401 rebuild(void Function(ErrorResponse401Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponse401Builder toBuilder() =>
      new ErrorResponse401Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponse401 &&
        errorCode == other.errorCode &&
        message == other.message &&
        debugInfo == other.debugInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, debugInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorResponse401')
          ..add('errorCode', errorCode)
          ..add('message', message)
          ..add('debugInfo', debugInfo))
        .toString();
  }
}

class ErrorResponse401Builder
    implements Builder<ErrorResponse401, ErrorResponse401Builder> {
  _$ErrorResponse401? _$v;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _debugInfo;
  String? get debugInfo => _$this._debugInfo;
  set debugInfo(String? debugInfo) => _$this._debugInfo = debugInfo;

  ErrorResponse401Builder() {
    ErrorResponse401._defaults(this);
  }

  ErrorResponse401Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorCode = $v.errorCode;
      _message = $v.message;
      _debugInfo = $v.debugInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorResponse401 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorResponse401;
  }

  @override
  void update(void Function(ErrorResponse401Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorResponse401 build() => _build();

  _$ErrorResponse401 _build() {
    final _$result = _$v ??
        new _$ErrorResponse401._(
            errorCode: BuiltValueNullFieldError.checkNotNull(
                errorCode, r'ErrorResponse401', 'errorCode'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ErrorResponse401', 'message'),
            debugInfo: BuiltValueNullFieldError.checkNotNull(
                debugInfo, r'ErrorResponse401', 'debugInfo'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
