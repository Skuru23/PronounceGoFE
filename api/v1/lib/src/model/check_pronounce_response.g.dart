// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_pronounce_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckPronounceResponse extends CheckPronounceResponse {
  @override
  final String text;
  @override
  final String ipa;
  @override
  final BuiltList<int> error;
  @override
  final int point;

  factory _$CheckPronounceResponse(
          [void Function(CheckPronounceResponseBuilder)? updates]) =>
      (new CheckPronounceResponseBuilder()..update(updates))._build();

  _$CheckPronounceResponse._(
      {required this.text,
      required this.ipa,
      required this.error,
      required this.point})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        text, r'CheckPronounceResponse', 'text');
    BuiltValueNullFieldError.checkNotNull(
        ipa, r'CheckPronounceResponse', 'ipa');
    BuiltValueNullFieldError.checkNotNull(
        error, r'CheckPronounceResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        point, r'CheckPronounceResponse', 'point');
  }

  @override
  CheckPronounceResponse rebuild(
          void Function(CheckPronounceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckPronounceResponseBuilder toBuilder() =>
      new CheckPronounceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckPronounceResponse &&
        text == other.text &&
        ipa == other.ipa &&
        error == other.error &&
        point == other.point;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, ipa.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, point.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckPronounceResponse')
          ..add('text', text)
          ..add('ipa', ipa)
          ..add('error', error)
          ..add('point', point))
        .toString();
  }
}

class CheckPronounceResponseBuilder
    implements Builder<CheckPronounceResponse, CheckPronounceResponseBuilder> {
  _$CheckPronounceResponse? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _ipa;
  String? get ipa => _$this._ipa;
  set ipa(String? ipa) => _$this._ipa = ipa;

  ListBuilder<int>? _error;
  ListBuilder<int> get error => _$this._error ??= new ListBuilder<int>();
  set error(ListBuilder<int>? error) => _$this._error = error;

  int? _point;
  int? get point => _$this._point;
  set point(int? point) => _$this._point = point;

  CheckPronounceResponseBuilder() {
    CheckPronounceResponse._defaults(this);
  }

  CheckPronounceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _ipa = $v.ipa;
      _error = $v.error.toBuilder();
      _point = $v.point;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckPronounceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckPronounceResponse;
  }

  @override
  void update(void Function(CheckPronounceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckPronounceResponse build() => _build();

  _$CheckPronounceResponse _build() {
    _$CheckPronounceResponse _$result;
    try {
      _$result = _$v ??
          new _$CheckPronounceResponse._(
              text: BuiltValueNullFieldError.checkNotNull(
                  text, r'CheckPronounceResponse', 'text'),
              ipa: BuiltValueNullFieldError.checkNotNull(
                  ipa, r'CheckPronounceResponse', 'ipa'),
              error: error.build(),
              point: BuiltValueNullFieldError.checkNotNull(
                  point, r'CheckPronounceResponse', 'point'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CheckPronounceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
