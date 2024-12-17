//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_group_detail_response.g.dart';

/// GetGroupDetailResponse
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [ownerId]
/// * [creator]
/// * [imagePath]
/// * [totalMember]
/// * [totalLesson]
/// * [totalLike]
/// * [isMember]
/// * [isOwner]
@BuiltValue()
abstract class GetGroupDetailResponse
    implements Built<GetGroupDetailResponse, GetGroupDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'owner_id')
  int? get ownerId;

  @BuiltValueField(wireName: r'creator')
  String get creator;

  @BuiltValueField(wireName: r'image_path')
  String? get imagePath;

  @BuiltValueField(wireName: r'total_member')
  int? get totalMember;

  @BuiltValueField(wireName: r'total_lesson')
  int? get totalLesson;

  @BuiltValueField(wireName: r'total_like')
  int? get totalLike;

  @BuiltValueField(wireName: r'is_member')
  bool? get isMember;

  @BuiltValueField(wireName: r'is_owner')
  bool? get isOwner;

  GetGroupDetailResponse._();

  factory GetGroupDetailResponse(
          [void updates(GetGroupDetailResponseBuilder b)]) =
      _$GetGroupDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetGroupDetailResponseBuilder b) => b
    ..totalMember = 0
    ..totalLesson = 0
    ..totalLike = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetGroupDetailResponse> get serializer =>
      _$GetGroupDetailResponseSerializer();
}

class _$GetGroupDetailResponseSerializer
    implements PrimitiveSerializer<GetGroupDetailResponse> {
  @override
  final Iterable<Type> types = const [
    GetGroupDetailResponse,
    _$GetGroupDetailResponse
  ];

  @override
  final String wireName = r'GetGroupDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetGroupDetailResponse object, {
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
    yield r'creator';
    yield serializers.serialize(
      object.creator,
      specifiedType: const FullType(String),
    );
    if (object.imagePath != null) {
      yield r'image_path';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.isMember != null) {
      yield r'is_member';
      yield serializers.serialize(
        object.isMember,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.isOwner != null) {
      yield r'is_owner';
      yield serializers.serialize(
        object.isOwner,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetGroupDetailResponse object, {
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
    required GetGroupDetailResponseBuilder result,
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
        case r'creator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creator = valueDes;
          break;
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
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
        case r'is_member':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isMember = valueDes;
          break;
        case r'is_owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOwner = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetGroupDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupDetailResponseBuilder();
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
