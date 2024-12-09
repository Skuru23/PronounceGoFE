// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ItemStatus _$NOT_STARTED = const ItemStatus._('NOT_STARTED');
const ItemStatus _$IN_PROGRESS = const ItemStatus._('IN_PROGRESS');
const ItemStatus _$DONE = const ItemStatus._('DONE');

ItemStatus _$valueOf(String name) {
  switch (name) {
    case 'NOT_STARTED':
      return _$NOT_STARTED;
    case 'IN_PROGRESS':
      return _$IN_PROGRESS;
    case 'DONE':
      return _$DONE;
    default:
      return _$DONE;
  }
}

final BuiltSet<ItemStatus> _$values =
    new BuiltSet<ItemStatus>(const <ItemStatus>[
  _$NOT_STARTED,
  _$IN_PROGRESS,
  _$DONE,
]);

class _$ItemStatusMeta {
  const _$ItemStatusMeta();
  ItemStatus get NOT_STARTED => _$NOT_STARTED;
  ItemStatus get IN_PROGRESS => _$IN_PROGRESS;
  ItemStatus get DONE => _$DONE;
  ItemStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ItemStatus> get values => _$values;
}

abstract class _$ItemStatusMixin {
  // ignore: non_constant_identifier_names
  _$ItemStatusMeta get ItemStatus => const _$ItemStatusMeta();
}

Serializer<ItemStatus> _$itemStatusSerializer = new _$ItemStatusSerializer();

class _$ItemStatusSerializer implements PrimitiveSerializer<ItemStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NOT_STARTED': 'NOT_STARTED',
    'IN_PROGRESS': 'IN_PROGRESS',
    'DONE': 'DONE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NOT_STARTED': 'NOT_STARTED',
    'IN_PROGRESS': 'IN_PROGRESS',
    'DONE': 'DONE',
  };

  @override
  final Iterable<Type> types = const <Type>[ItemStatus];
  @override
  final String wireName = 'ItemStatus';

  @override
  Object serialize(Serializers serializers, ItemStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ItemStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ItemStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
