// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGroupRequest extends CreateGroupRequest {
  @override
  final String name;
  @override
  final String description;

  factory _$CreateGroupRequest(
          [void Function(CreateGroupRequestBuilder)? updates]) =>
      (new CreateGroupRequestBuilder()..update(updates))._build();

  _$CreateGroupRequest._({required this.name, required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreateGroupRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'CreateGroupRequest', 'description');
  }

  @override
  CreateGroupRequest rebuild(
          void Function(CreateGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGroupRequestBuilder toBuilder() =>
      new CreateGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGroupRequest &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateGroupRequest')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class CreateGroupRequestBuilder
    implements Builder<CreateGroupRequest, CreateGroupRequestBuilder> {
  _$CreateGroupRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateGroupRequestBuilder() {
    CreateGroupRequest._defaults(this);
  }

  CreateGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGroupRequest;
  }

  @override
  void update(void Function(CreateGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGroupRequest build() => _build();

  _$CreateGroupRequest _build() {
    final _$result = _$v ??
        new _$CreateGroupRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateGroupRequest', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'CreateGroupRequest', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
