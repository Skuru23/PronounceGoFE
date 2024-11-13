// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupsResponse extends GetGroupsResponse {
  @override
  final int page;
  @override
  final int perPage;
  @override
  final int total;
  @override
  final BuiltList<GetGroupItem> data;

  factory _$GetGroupsResponse(
          [void Function(GetGroupsResponseBuilder)? updates]) =>
      (new GetGroupsResponseBuilder()..update(updates))._build();

  _$GetGroupsResponse._(
      {required this.page,
      required this.perPage,
      required this.total,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, r'GetGroupsResponse', 'page');
    BuiltValueNullFieldError.checkNotNull(
        perPage, r'GetGroupsResponse', 'perPage');
    BuiltValueNullFieldError.checkNotNull(total, r'GetGroupsResponse', 'total');
    BuiltValueNullFieldError.checkNotNull(data, r'GetGroupsResponse', 'data');
  }

  @override
  GetGroupsResponse rebuild(void Function(GetGroupsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupsResponseBuilder toBuilder() =>
      new GetGroupsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupsResponse &&
        page == other.page &&
        perPage == other.perPage &&
        total == other.total &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetGroupsResponse')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('total', total)
          ..add('data', data))
        .toString();
  }
}

class GetGroupsResponseBuilder
    implements Builder<GetGroupsResponse, GetGroupsResponseBuilder> {
  _$GetGroupsResponse? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<GetGroupItem>? _data;
  ListBuilder<GetGroupItem> get data =>
      _$this._data ??= new ListBuilder<GetGroupItem>();
  set data(ListBuilder<GetGroupItem>? data) => _$this._data = data;

  GetGroupsResponseBuilder() {
    GetGroupsResponse._defaults(this);
  }

  GetGroupsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _total = $v.total;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupsResponse;
  }

  @override
  void update(void Function(GetGroupsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupsResponse build() => _build();

  _$GetGroupsResponse _build() {
    _$GetGroupsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetGroupsResponse._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'GetGroupsResponse', 'page'),
              perPage: BuiltValueNullFieldError.checkNotNull(
                  perPage, r'GetGroupsResponse', 'perPage'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'GetGroupsResponse', 'total'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetGroupsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
