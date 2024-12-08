// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_sentence_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LearnSentenceResponse extends LearnSentenceResponse {
  @override
  final String text;
  @override
  final String ipa;
  @override
  final BuiltList<int> error;
  @override
  final int point;

  factory _$LearnSentenceResponse(
          [void Function(LearnSentenceResponseBuilder)? updates]) =>
      (new LearnSentenceResponseBuilder()..update(updates))._build();

  _$LearnSentenceResponse._(
      {required this.text,
      required this.ipa,
      required this.error,
      required this.point})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        text, r'LearnSentenceResponse', 'text');
    BuiltValueNullFieldError.checkNotNull(ipa, r'LearnSentenceResponse', 'ipa');
    BuiltValueNullFieldError.checkNotNull(
        error, r'LearnSentenceResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        point, r'LearnSentenceResponse', 'point');
  }

  @override
  LearnSentenceResponse rebuild(
          void Function(LearnSentenceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LearnSentenceResponseBuilder toBuilder() =>
      new LearnSentenceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LearnSentenceResponse &&
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
    return (newBuiltValueToStringHelper(r'LearnSentenceResponse')
          ..add('text', text)
          ..add('ipa', ipa)
          ..add('error', error)
          ..add('point', point))
        .toString();
  }
}

class LearnSentenceResponseBuilder
    implements Builder<LearnSentenceResponse, LearnSentenceResponseBuilder> {
  _$LearnSentenceResponse? _$v;

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

  LearnSentenceResponseBuilder() {
    LearnSentenceResponse._defaults(this);
  }

  LearnSentenceResponseBuilder get _$this {
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
  void replace(LearnSentenceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LearnSentenceResponse;
  }

  @override
  void update(void Function(LearnSentenceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LearnSentenceResponse build() => _build();

  _$LearnSentenceResponse _build() {
    _$LearnSentenceResponse _$result;
    try {
      _$result = _$v ??
          new _$LearnSentenceResponse._(
              text: BuiltValueNullFieldError.checkNotNull(
                  text, r'LearnSentenceResponse', 'text'),
              ipa: BuiltValueNullFieldError.checkNotNull(
                  ipa, r'LearnSentenceResponse', 'ipa'),
              error: error.build(),
              point: BuiltValueNullFieldError.checkNotNull(
                  point, r'LearnSentenceResponse', 'point'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LearnSentenceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
