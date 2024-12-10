// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_members_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupMembersResponse extends GetGroupMembersResponse {
  @override
  final BuiltList<GroupMemberItem>? data;

  factory _$GetGroupMembersResponse(
          [void Function(GetGroupMembersResponseBuilder)? updates]) =>
      (new GetGroupMembersResponseBuilder()..update(updates))._build();

  _$GetGroupMembersResponse._({this.data}) : super._();

  @override
  GetGroupMembersResponse rebuild(
          void Function(GetGroupMembersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupMembersResponseBuilder toBuilder() =>
      new GetGroupMembersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupMembersResponse && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetGroupMembersResponse')
          ..add('data', data))
        .toString();
  }
}

class GetGroupMembersResponseBuilder
    implements
        Builder<GetGroupMembersResponse, GetGroupMembersResponseBuilder> {
  _$GetGroupMembersResponse? _$v;

  ListBuilder<GroupMemberItem>? _data;
  ListBuilder<GroupMemberItem> get data =>
      _$this._data ??= new ListBuilder<GroupMemberItem>();
  set data(ListBuilder<GroupMemberItem>? data) => _$this._data = data;

  GetGroupMembersResponseBuilder() {
    GetGroupMembersResponse._defaults(this);
  }

  GetGroupMembersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupMembersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupMembersResponse;
  }

  @override
  void update(void Function(GetGroupMembersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupMembersResponse build() => _build();

  _$GetGroupMembersResponse _build() {
    _$GetGroupMembersResponse _$result;
    try {
      _$result = _$v ?? new _$GetGroupMembersResponse._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetGroupMembersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
