//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_group_item.g.dart';

/// GetGroupItem
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [ownerId]
/// * [totalMember]
/// * [totalLesson]
/// * [totalLike]
@BuiltValue()
abstract class GetGroupItem
    implements Built<GetGroupItem, GetGroupItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'owner_id')
  int? get ownerId;

  @BuiltValueField(wireName: r'total_member')
  int? get totalMember;

  @BuiltValueField(wireName: r'total_lesson')
  int? get totalLesson;

  @BuiltValueField(wireName: r'total_like')
  int? get totalLike;

  GetGroupItem._();

  factory GetGroupItem([void updates(GetGroupItemBuilder b)]) = _$GetGroupItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetGroupItemBuilder b) => b
    ..totalMember = 0
    ..totalLesson = 0
    ..totalLike = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetGroupItem> get serializer => _$GetGroupItemSerializer();
}

class _$GetGroupItemSerializer implements PrimitiveSerializer<GetGroupItem> {
  @override
  final Iterable<Type> types = const [GetGroupItem, _$GetGroupItem];

  @override
  final String wireName = r'GetGroupItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetGroupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield object.id == null
        ? null
        : serializers.serialize(
            object.id,
            specifiedType: const FullType.nullable(int),
          );
    yield r'name';
    yield object.name == null
        ? null
        : serializers.serialize(
            object.name,
            specifiedType: const FullType.nullable(String),
          );
    yield r'description';
    yield object.description == null
        ? null
        : serializers.serialize(
            object.description,
            specifiedType: const FullType.nullable(String),
          );
    yield r'owner_id';
    yield object.ownerId == null
        ? null
        : serializers.serialize(
            object.ownerId,
            specifiedType: const FullType.nullable(int),
          );
    if (object.totalMember != null) {
      yield r'total_member';
      yield serializers.serialize(
        object.totalMember,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalLesson != null) {
      yield r'total_lesson';
      yield serializers.serialize(
        object.totalLesson,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalLike != null) {
      yield r'total_like';
      yield serializers.serialize(
        object.totalLike,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetGroupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetGroupItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'owner_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        case r'total_member':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalMember = valueDes;
          break;
        case r'total_lesson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalLesson = valueDes;
          break;
        case r'total_like':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalLike = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetGroupItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupItemBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
