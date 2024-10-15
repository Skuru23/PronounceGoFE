// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorResponse400 extends ErrorResponse400 {
  @override
  final String errorCode;
  @override
  final String message;
  @override
  final String debugInfo;

  factory _$ErrorResponse400(
          [void Function(ErrorResponse400Builder)? updates]) =>
      (new ErrorResponse400Builder()..update(updates))._build();

  _$ErrorResponse400._(
      {required this.errorCode, required this.message, required this.debugInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        errorCode, r'ErrorResponse400', 'errorCode');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ErrorResponse400', 'message');
    BuiltValueNullFieldError.checkNotNull(
        debugInfo, r'ErrorResponse400', 'debugInfo');
  }

  @override
  ErrorResponse400 rebuild(void Function(ErrorResponse400Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponse400Builder toBuilder() =>
      new ErrorResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponse400 &&
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
    return (newBuiltValueToStringHelper(r'ErrorResponse400')
          ..add('errorCode', errorCode)
          ..add('message', message)
          ..add('debugInfo', debugInfo))
        .toString();
  }
}

class ErrorResponse400Builder
    implements Builder<ErrorResponse400, ErrorResponse400Builder> {
  _$ErrorResponse400? _$v;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _debugInfo;
  String? get debugInfo => _$this._debugInfo;
  set debugInfo(String? debugInfo) => _$this._debugInfo = debugInfo;

  ErrorResponse400Builder() {
    ErrorResponse400._defaults(this);
  }

  ErrorResponse400Builder get _$this {
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
  void replace(ErrorResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorResponse400;
  }

  @override
  void update(void Function(ErrorResponse400Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorResponse400 build() => _build();

  _$ErrorResponse400 _build() {
    final _$result = _$v ??
        new _$ErrorResponse400._(
            errorCode: BuiltValueNullFieldError.checkNotNull(
                errorCode, r'ErrorResponse400', 'errorCode'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ErrorResponse400', 'message'),
            debugInfo: BuiltValueNullFieldError.checkNotNull(
                debugInfo, r'ErrorResponse400', 'debugInfo'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
