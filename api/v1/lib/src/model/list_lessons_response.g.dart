// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_lessons_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListLessonsResponse extends ListLessonsResponse {
  @override
  final BuiltList<ListLessonsItem>? data;

  factory _$ListLessonsResponse(
          [void Function(ListLessonsResponseBuilder)? updates]) =>
      (new ListLessonsResponseBuilder()..update(updates))._build();

  _$ListLessonsResponse._({this.data}) : super._();

  @override
  ListLessonsResponse rebuild(
          void Function(ListLessonsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListLessonsResponseBuilder toBuilder() =>
      new ListLessonsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListLessonsResponse && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ListLessonsResponse')
          ..add('data', data))
        .toString();
  }
}

class ListLessonsResponseBuilder
    implements Builder<ListLessonsResponse, ListLessonsResponseBuilder> {
  _$ListLessonsResponse? _$v;

  ListBuilder<ListLessonsItem>? _data;
  ListBuilder<ListLessonsItem> get data =>
      _$this._data ??= new ListBuilder<ListLessonsItem>();
  set data(ListBuilder<ListLessonsItem>? data) => _$this._data = data;

  ListLessonsResponseBuilder() {
    ListLessonsResponse._defaults(this);
  }

  ListLessonsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListLessonsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListLessonsResponse;
  }

  @override
  void update(void Function(ListLessonsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListLessonsResponse build() => _build();

  _$ListLessonsResponse _build() {
    _$ListLessonsResponse _$result;
    try {
      _$result = _$v ?? new _$ListLessonsResponse._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListLessonsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
