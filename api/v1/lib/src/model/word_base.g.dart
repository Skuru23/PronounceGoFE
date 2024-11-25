// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WordBase extends WordBase {
  @override
  final int? id;
  @override
  final String? word;
  @override
  final String? ipa;
  @override
  final String? mean;
  @override
  final int? difficultLevel;
  @override
  final String? pathOfSpeech;

  factory _$WordBase([void Function(WordBaseBuilder)? updates]) =>
      (new WordBaseBuilder()..update(updates))._build();

  _$WordBase._(
      {this.id,
      this.word,
      this.ipa,
      this.mean,
      this.difficultLevel,
      this.pathOfSpeech})
      : super._();

  @override
  WordBase rebuild(void Function(WordBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WordBaseBuilder toBuilder() => new WordBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WordBase &&
        id == other.id &&
        word == other.word &&
        ipa == other.ipa &&
        mean == other.mean &&
        difficultLevel == other.difficultLevel &&
        pathOfSpeech == other.pathOfSpeech;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, word.hashCode);
    _$hash = $jc(_$hash, ipa.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jc(_$hash, difficultLevel.hashCode);
    _$hash = $jc(_$hash, pathOfSpeech.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WordBase')
          ..add('id', id)
          ..add('word', word)
          ..add('ipa', ipa)
          ..add('mean', mean)
          ..add('difficultLevel', difficultLevel)
          ..add('pathOfSpeech', pathOfSpeech))
        .toString();
  }
}

class WordBaseBuilder implements Builder<WordBase, WordBaseBuilder> {
  _$WordBase? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _word;
  String? get word => _$this._word;
  set word(String? word) => _$this._word = word;

  String? _ipa;
  String? get ipa => _$this._ipa;
  set ipa(String? ipa) => _$this._ipa = ipa;

  String? _mean;
  String? get mean => _$this._mean;
  set mean(String? mean) => _$this._mean = mean;

  int? _difficultLevel;
  int? get difficultLevel => _$this._difficultLevel;
  set difficultLevel(int? difficultLevel) =>
      _$this._difficultLevel = difficultLevel;

  String? _pathOfSpeech;
  String? get pathOfSpeech => _$this._pathOfSpeech;
  set pathOfSpeech(String? pathOfSpeech) => _$this._pathOfSpeech = pathOfSpeech;

  WordBaseBuilder() {
    WordBase._defaults(this);
  }

  WordBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _word = $v.word;
      _ipa = $v.ipa;
      _mean = $v.mean;
      _difficultLevel = $v.difficultLevel;
      _pathOfSpeech = $v.pathOfSpeech;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WordBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WordBase;
  }

  @override
  void update(void Function(WordBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WordBase build() => _build();

  _$WordBase _build() {
    final _$result = _$v ??
        new _$WordBase._(
            id: id,
            word: word,
            ipa: ipa,
            mean: mean,
            difficultLevel: difficultLevel,
            pathOfSpeech: pathOfSpeech);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
