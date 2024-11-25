// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_word_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListingWordResponse extends ListingWordResponse {
  @override
  final BuiltList<WordBase> data;

  factory _$ListingWordResponse(
          [void Function(ListingWordResponseBuilder)? updates]) =>
      (new ListingWordResponseBuilder()..update(updates))._build();

  _$ListingWordResponse._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'ListingWordResponse', 'data');
  }

  @override
  ListingWordResponse rebuild(
          void Function(ListingWordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingWordResponseBuilder toBuilder() =>
      new ListingWordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingWordResponse && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingWordResponse')
          ..add('data', data))
        .toString();
  }
}

class ListingWordResponseBuilder
    implements Builder<ListingWordResponse, ListingWordResponseBuilder> {
  _$ListingWordResponse? _$v;

  ListBuilder<WordBase>? _data;
  ListBuilder<WordBase> get data =>
      _$this._data ??= new ListBuilder<WordBase>();
  set data(ListBuilder<WordBase>? data) => _$this._data = data;

  ListingWordResponseBuilder() {
    ListingWordResponse._defaults(this);
  }

  ListingWordResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingWordResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingWordResponse;
  }

  @override
  void update(void Function(ListingWordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingWordResponse build() => _build();

  _$ListingWordResponse _build() {
    _$ListingWordResponse _$result;
    try {
      _$result = _$v ?? new _$ListingWordResponse._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListingWordResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
