// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_pronounce_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckPronounceRequest extends CheckPronounceRequest {
  @override
  final String resultText;
  @override
  final String expectText;

  factory _$CheckPronounceRequest(
          [void Function(CheckPronounceRequestBuilder)? updates]) =>
      (new CheckPronounceRequestBuilder()..update(updates))._build();

  _$CheckPronounceRequest._(
      {required this.resultText, required this.expectText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resultText, r'CheckPronounceRequest', 'resultText');
    BuiltValueNullFieldError.checkNotNull(
        expectText, r'CheckPronounceRequest', 'expectText');
  }

  @override
  CheckPronounceRequest rebuild(
          void Function(CheckPronounceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckPronounceRequestBuilder toBuilder() =>
      new CheckPronounceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckPronounceRequest &&
        resultText == other.resultText &&
        expectText == other.expectText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resultText.hashCode);
    _$hash = $jc(_$hash, expectText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckPronounceRequest')
          ..add('resultText', resultText)
          ..add('expectText', expectText))
        .toString();
  }
}

class CheckPronounceRequestBuilder
    implements Builder<CheckPronounceRequest, CheckPronounceRequestBuilder> {
  _$CheckPronounceRequest? _$v;

  String? _resultText;
  String? get resultText => _$this._resultText;
  set resultText(String? resultText) => _$this._resultText = resultText;

  String? _expectText;
  String? get expectText => _$this._expectText;
  set expectText(String? expectText) => _$this._expectText = expectText;

  CheckPronounceRequestBuilder() {
    CheckPronounceRequest._defaults(this);
  }

  CheckPronounceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resultText = $v.resultText;
      _expectText = $v.expectText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckPronounceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckPronounceRequest;
  }

  @override
  void update(void Function(CheckPronounceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckPronounceRequest build() => _build();

  _$CheckPronounceRequest _build() {
    final _$result = _$v ??
        new _$CheckPronounceRequest._(
            resultText: BuiltValueNullFieldError.checkNotNull(
                resultText, r'CheckPronounceRequest', 'resultText'),
            expectText: BuiltValueNullFieldError.checkNotNull(
                expectText, r'CheckPronounceRequest', 'expectText'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
