//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lesson_base.g.dart';

/// LessonBase
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [userOwnerId]
/// * [groupOwnerId]
/// * [isPublic]
/// * [imagePath]
@BuiltValue()
abstract class LessonBase implements Built<LessonBase, LessonBaseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

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

  @BuiltValueField(wireName: r'image_path')
  String? get imagePath;

  LessonBase._();

  factory LessonBase([void updates(LessonBaseBuilder b)]) = _$LessonBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LessonBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LessonBase> get serializer => _$LessonBaseSerializer();
}

class _$LessonBaseSerializer implements PrimitiveSerializer<LessonBase> {
  @override
  final Iterable<Type> types = const [LessonBase, _$LessonBase];

  @override
  final String wireName = r'LessonBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LessonBase object, {
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
    yield r'image_path';
    yield object.imagePath == null
        ? null
        : serializers.serialize(
            object.imagePath,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    LessonBase object, {
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
    required LessonBaseBuilder result,
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
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LessonBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LessonBaseBuilder();
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
