// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_top_group_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListingTopGroupResponse extends ListingTopGroupResponse {
  @override
  final BuiltList<GroupBase>? data;

  factory _$ListingTopGroupResponse(
          [void Function(ListingTopGroupResponseBuilder)? updates]) =>
      (new ListingTopGroupResponseBuilder()..update(updates))._build();

  _$ListingTopGroupResponse._({this.data}) : super._();

  @override
  ListingTopGroupResponse rebuild(
          void Function(ListingTopGroupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingTopGroupResponseBuilder toBuilder() =>
      new ListingTopGroupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingTopGroupResponse && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ListingTopGroupResponse')
          ..add('data', data))
        .toString();
  }
}

class ListingTopGroupResponseBuilder
    implements
        Builder<ListingTopGroupResponse, ListingTopGroupResponseBuilder> {
  _$ListingTopGroupResponse? _$v;

  ListBuilder<GroupBase>? _data;
  ListBuilder<GroupBase> get data =>
      _$this._data ??= new ListBuilder<GroupBase>();
  set data(ListBuilder<GroupBase>? data) => _$this._data = data;

  ListingTopGroupResponseBuilder() {
    ListingTopGroupResponse._defaults(this);
  }

  ListingTopGroupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingTopGroupResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingTopGroupResponse;
  }

  @override
  void update(void Function(ListingTopGroupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingTopGroupResponse build() => _build();

  _$ListingTopGroupResponse _build() {
    _$ListingTopGroupResponse _$result;
    try {
      _$result = _$v ?? new _$ListingTopGroupResponse._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListingTopGroupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
