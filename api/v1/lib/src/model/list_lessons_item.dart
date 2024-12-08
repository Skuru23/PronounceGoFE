//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_lessons_item.g.dart';

/// ListLessonsItem
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [userOwnerId]
/// * [groupOwnerId]
/// * [isPublic]
/// * [totalLikes]
/// * [totalLearners]
/// * [creator]
@BuiltValue()
abstract class ListLessonsItem
    implements Built<ListLessonsItem, ListLessonsItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'user_owner_id')
  int? get userOwnerId;

  @BuiltValueField(wireName: r'group_owner_id')
  int? get groupOwnerId;

  @BuiltValueField(wireName: r'is_public')
  bool? get isPublic;

  @BuiltValueField(wireName: r'total_likes')
  int? get totalLikes;

  @BuiltValueField(wireName: r'total_learners')
  int? get totalLearners;

  @BuiltValueField(wireName: r'creator')
  String? get creator;

  ListLessonsItem._();

  factory ListLessonsItem([void updates(ListLessonsItemBuilder b)]) =
      _$ListLessonsItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListLessonsItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListLessonsItem> get serializer =>
      _$ListLessonsItemSerializer();
}

class _$ListLessonsItemSerializer
    implements PrimitiveSerializer<ListLessonsItem> {
  @override
  final Iterable<Type> types = const [ListLessonsItem, _$ListLessonsItem];

  @override
  final String wireName = r'ListLessonsItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListLessonsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
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
    yield r'user_owner_id';
    yield object.userOwnerId == null
        ? null
        : serializers.serialize(
            object.userOwnerId,
            specifiedType: const FullType.nullable(int),
          );
    yield r'group_owner_id';
    yield object.groupOwnerId == null
        ? null
        : serializers.serialize(
            object.groupOwnerId,
            specifiedType: const FullType.nullable(int),
          );
    yield r'is_public';
    yield object.isPublic == null
        ? null
        : serializers.serialize(
            object.isPublic,
            specifiedType: const FullType.nullable(bool),
          );
    yield r'total_likes';
    yield object.totalLikes == null
        ? null
        : serializers.serialize(
            object.totalLikes,
            specifiedType: const FullType.nullable(int),
          );
    yield r'total_learners';
    yield object.totalLearners == null
        ? null
        : serializers.serialize(
            object.totalLearners,
            specifiedType: const FullType.nullable(int),
          );
    yield r'creator';
    yield object.creator == null
        ? null
        : serializers.serialize(
            object.creator,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListLessonsItem object, {
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
    required ListLessonsItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
        case r'user_owner_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.userOwnerId = valueDes;
          break;
        case r'group_owner_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.groupOwnerId = valueDes;
          break;
        case r'is_public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPublic = valueDes;
          break;
        case r'total_likes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalLikes = valueDes;
          break;
        case r'total_learners':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalLearners = valueDes;
          break;
        case r'creator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creator = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListLessonsItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListLessonsItemBuilder();
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
