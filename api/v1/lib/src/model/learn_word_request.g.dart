// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_word_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LearnWordRequest extends LearnWordRequest {
  @override
  final String speechText;

  factory _$LearnWordRequest(
          [void Function(LearnWordRequestBuilder)? updates]) =>
      (new LearnWordRequestBuilder()..update(updates))._build();

  _$LearnWordRequest._({required this.speechText}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        speechText, r'LearnWordRequest', 'speechText');
  }

  @override
  LearnWordRequest rebuild(void Function(LearnWordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LearnWordRequestBuilder toBuilder() =>
      new LearnWordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LearnWordRequest && speechText == other.speechText;
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
    return (newBuiltValueToStringHelper(r'LearnWordRequest')
          ..add('speechText', speechText))
        .toString();
  }
}

class LearnWordRequestBuilder
    implements Builder<LearnWordRequest, LearnWordRequestBuilder> {
  _$LearnWordRequest? _$v;

  String? _speechText;
  String? get speechText => _$this._speechText;
  set speechText(String? speechText) => _$this._speechText = speechText;

  LearnWordRequestBuilder() {
    LearnWordRequest._defaults(this);
  }

  LearnWordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speechText = $v.speechText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LearnWordRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LearnWordRequest;
  }

  @override
  void update(void Function(LearnWordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LearnWordRequest build() => _build();

  _$LearnWordRequest _build() {
    final _$result = _$v ??
        new _$LearnWordRequest._(
            speechText: BuiltValueNullFieldError.checkNotNull(
                speechText, r'LearnWordRequest', 'speechText'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
