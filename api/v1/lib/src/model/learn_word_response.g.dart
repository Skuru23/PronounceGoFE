// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_word_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LearnWordResponse extends LearnWordResponse {
  @override
  final String text;
  @override
  final String ipa;
  @override
  final BuiltList<int> error;
  @override
  final int point;

  factory _$LearnWordResponse(
          [void Function(LearnWordResponseBuilder)? updates]) =>
      (new LearnWordResponseBuilder()..update(updates))._build();

  _$LearnWordResponse._(
      {required this.text,
      required this.ipa,
      required this.error,
      required this.point})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'LearnWordResponse', 'text');
    BuiltValueNullFieldError.checkNotNull(ipa, r'LearnWordResponse', 'ipa');
    BuiltValueNullFieldError.checkNotNull(error, r'LearnWordResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(point, r'LearnWordResponse', 'point');
  }

  @override
  LearnWordResponse rebuild(void Function(LearnWordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LearnWordResponseBuilder toBuilder() =>
      new LearnWordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LearnWordResponse &&
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
    return (newBuiltValueToStringHelper(r'LearnWordResponse')
          ..add('text', text)
          ..add('ipa', ipa)
          ..add('error', error)
          ..add('point', point))
        .toString();
  }
}

class LearnWordResponseBuilder
    implements Builder<LearnWordResponse, LearnWordResponseBuilder> {
  _$LearnWordResponse? _$v;

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

  LearnWordResponseBuilder() {
    LearnWordResponse._defaults(this);
  }

  LearnWordResponseBuilder get _$this {
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
  void replace(LearnWordResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LearnWordResponse;
  }

  @override
  void update(void Function(LearnWordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LearnWordResponse build() => _build();

  _$LearnWordResponse _build() {
    _$LearnWordResponse _$result;
    try {
      _$result = _$v ??
          new _$LearnWordResponse._(
              text: BuiltValueNullFieldError.checkNotNull(
                  text, r'LearnWordResponse', 'text'),
              ipa: BuiltValueNullFieldError.checkNotNull(
                  ipa, r'LearnWordResponse', 'ipa'),
              error: error.build(),
              point: BuiltValueNullFieldError.checkNotNull(
                  point, r'LearnWordResponse', 'point'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LearnWordResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
