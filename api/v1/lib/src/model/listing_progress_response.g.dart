// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_progress_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListingProgressResponse extends ListingProgressResponse {
  @override
  final BuiltList<ListingProgressItem>? data;

  factory _$ListingProgressResponse(
          [void Function(ListingProgressResponseBuilder)? updates]) =>
      (new ListingProgressResponseBuilder()..update(updates))._build();

  _$ListingProgressResponse._({this.data}) : super._();

  @override
  ListingProgressResponse rebuild(
          void Function(ListingProgressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingProgressResponseBuilder toBuilder() =>
      new ListingProgressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingProgressResponse && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ListingProgressResponse')
          ..add('data', data))
        .toString();
  }
}

class ListingProgressResponseBuilder
    implements
        Builder<ListingProgressResponse, ListingProgressResponseBuilder> {
  _$ListingProgressResponse? _$v;

  ListBuilder<ListingProgressItem>? _data;
  ListBuilder<ListingProgressItem> get data =>
      _$this._data ??= new ListBuilder<ListingProgressItem>();
  set data(ListBuilder<ListingProgressItem>? data) => _$this._data = data;

  ListingProgressResponseBuilder() {
    ListingProgressResponse._defaults(this);
  }

  ListingProgressResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingProgressResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingProgressResponse;
  }

  @override
  void update(void Function(ListingProgressResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingProgressResponse build() => _build();

  _$ListingProgressResponse _build() {
    _$ListingProgressResponse _$result;
    try {
      _$result = _$v ?? new _$ListingProgressResponse._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListingProgressResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
