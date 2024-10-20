// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response403.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorResponse403 extends ErrorResponse403 {
  @override
  final String errorCode;
  @override
  final String message;
  @override
  final String debugInfo;

  factory _$ErrorResponse403(
          [void Function(ErrorResponse403Builder)? updates]) =>
      (new ErrorResponse403Builder()..update(updates))._build();

  _$ErrorResponse403._(
      {required this.errorCode, required this.message, required this.debugInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        errorCode, r'ErrorResponse403', 'errorCode');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ErrorResponse403', 'message');
    BuiltValueNullFieldError.checkNotNull(
        debugInfo, r'ErrorResponse403', 'debugInfo');
  }

  @override
  ErrorResponse403 rebuild(void Function(ErrorResponse403Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponse403Builder toBuilder() =>
      new ErrorResponse403Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponse403 &&
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
    return (newBuiltValueToStringHelper(r'ErrorResponse403')
          ..add('errorCode', errorCode)
          ..add('message', message)
          ..add('debugInfo', debugInfo))
        .toString();
  }
}

class ErrorResponse403Builder
    implements Builder<ErrorResponse403, ErrorResponse403Builder> {
  _$ErrorResponse403? _$v;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _debugInfo;
  String? get debugInfo => _$this._debugInfo;
  set debugInfo(String? debugInfo) => _$this._debugInfo = debugInfo;

  ErrorResponse403Builder() {
    ErrorResponse403._defaults(this);
  }

  ErrorResponse403Builder get _$this {
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
  void replace(ErrorResponse403 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorResponse403;
  }

  @override
  void update(void Function(ErrorResponse403Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorResponse403 build() => _build();

  _$ErrorResponse403 _build() {
    final _$result = _$v ??
        new _$ErrorResponse403._(
            errorCode: BuiltValueNullFieldError.checkNotNull(
                errorCode, r'ErrorResponse403', 'errorCode'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ErrorResponse403', 'message'),
            debugInfo: BuiltValueNullFieldError.checkNotNull(
                debugInfo, r'ErrorResponse403', 'debugInfo'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
