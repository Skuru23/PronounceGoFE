// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoleCode _$USER = const RoleCode._('USER');
const RoleCode _$ADMIN = const RoleCode._('ADMIN');

RoleCode _$valueOf(String name) {
  switch (name) {
    case 'USER':
      return _$USER;
    case 'ADMIN':
      return _$ADMIN;
    default:
      return _$ADMIN;
  }
}

final BuiltSet<RoleCode> _$values = new BuiltSet<RoleCode>(const <RoleCode>[
  _$USER,
  _$ADMIN,
]);

class _$RoleCodeMeta {
  const _$RoleCodeMeta();
  RoleCode get USER => _$USER;
  RoleCode get ADMIN => _$ADMIN;
  RoleCode valueOf(String name) => _$valueOf(name);
  BuiltSet<RoleCode> get values => _$values;
}

abstract class _$RoleCodeMixin {
  // ignore: non_constant_identifier_names
  _$RoleCodeMeta get RoleCode => const _$RoleCodeMeta();
}

Serializer<RoleCode> _$roleCodeSerializer = new _$RoleCodeSerializer();

class _$RoleCodeSerializer implements PrimitiveSerializer<RoleCode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USER': 'USER',
    'ADMIN': 'ADMIN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USER': 'USER',
    'ADMIN': 'ADMIN',
  };

  @override
  final Iterable<Type> types = const <Type>[RoleCode];
  @override
  final String wireName = 'RoleCode';

  @override
  Object serialize(Serializers serializers, RoleCode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RoleCode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RoleCode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
