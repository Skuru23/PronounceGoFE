// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_sentence_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LearnSentenceRequest extends LearnSentenceRequest {
  @override
  final String speechText;

  factory _$LearnSentenceRequest(
          [void Function(LearnSentenceRequestBuilder)? updates]) =>
      (new LearnSentenceRequestBuilder()..update(updates))._build();

  _$LearnSentenceRequest._({required this.speechText}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        speechText, r'LearnSentenceRequest', 'speechText');
  }

  @override
  LearnSentenceRequest rebuild(
          void Function(LearnSentenceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LearnSentenceRequestBuilder toBuilder() =>
      new LearnSentenceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LearnSentenceRequest && speechText == other.speechText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speechText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LearnSentenceRequest')
          ..add('speechText', speechText))
        .toString();
  }
}

class LearnSentenceRequestBuilder
    implements Builder<LearnSentenceRequest, LearnSentenceRequestBuilder> {
  _$LearnSentenceRequest? _$v;

  String? _speechText;
  String? get speechText => _$this._speechText;
  set speechText(String? speechText) => _$this._speechText = speechText;

  LearnSentenceRequestBuilder() {
    LearnSentenceRequest._defaults(this);
  }

  LearnSentenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speechText = $v.speechText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LearnSentenceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LearnSentenceRequest;
  }

  @override
  void update(void Function(LearnSentenceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LearnSentenceRequest build() => _build();

  _$LearnSentenceRequest _build() {
    final _$result = _$v ??
        new _$LearnSentenceRequest._(
            speechText: BuiltValueNullFieldError.checkNotNull(
                speechText, r'LearnSentenceRequest', 'speechText'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
