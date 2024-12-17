//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pronounce_go_api/src/model/role_code.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_response.g.dart';

/// UserResponse
///
/// Properties:
/// * [id]
/// * [roleCode]
/// * [email]
/// * [name]
/// * [phone]
/// * [address]
/// * [imagePath]
/// * [totalProgress]
/// * [remainProgress]
/// * [doneProgress]
/// * [notStartProgress]
/// * [totalLesson]
/// * [joinedGroup]
@BuiltValue()
abstract class UserResponse
    implements Built<UserResponse, UserResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'role_code')
  RoleCode? get roleCode;
  // enum roleCodeEnum {  USER,  ADMIN,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'image_path')
  String? get imagePath;

  @BuiltValueField(wireName: r'total_progress')
  int? get totalProgress;

  @BuiltValueField(wireName: r'remain_progress')
  int? get remainProgress;

  @BuiltValueField(wireName: r'done_progress')
  int? get doneProgress;

  @BuiltValueField(wireName: r'not_start_progress')
  int? get notStartProgress;

  @BuiltValueField(wireName: r'total_lesson')
  int? get totalLesson;

  @BuiltValueField(wireName: r'joined_group')
  int? get joinedGroup;

  UserResponse._();

  factory UserResponse([void updates(UserResponseBuilder b)]) = _$UserResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserResponse> get serializer => _$UserResponseSerializer();
}

class _$UserResponseSerializer implements PrimitiveSerializer<UserResponse> {
  @override
  final Iterable<Type> types = const [UserResponse, _$UserResponse];

  @override
  final String wireName = r'UserResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield object.id == null
        ? null
        : serializers.serialize(
            object.id,
            specifiedType: const FullType.nullable(int),
          );
    yield r'role_code';
    yield object.roleCode == null
        ? null
        : serializers.serialize(
            object.roleCode,
            specifiedType: const FullType.nullable(RoleCode),
          );
    yield r'email';
    yield object.email == null
        ? null
        : serializers.serialize(
            object.email,
            specifiedType: const FullType.nullable(String),
          );
    yield r'name';
    yield object.name == null
        ? null
        : serializers.serialize(
            object.name,
            specifiedType: const FullType.nullable(String),
          );
    yield r'phone';
    yield object.phone == null
        ? null
        : serializers.serialize(
            object.phone,
            specifiedType: const FullType.nullable(String),
          );
    yield r'address';
    yield object.address == null
        ? null
        : serializers.serialize(
            object.address,
            specifiedType: const FullType.nullable(String),
          );
    if (object.imagePath != null) {
      yield r'image_path';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalProgress != null) {
      yield r'total_progress';
      yield serializers.serialize(
        object.totalProgress,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.remainProgress != null) {
      yield r'remain_progress';
      yield serializers.serialize(
        object.remainProgress,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.doneProgress != null) {
      yield r'done_progress';
      yield serializers.serialize(
        object.doneProgress,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.notStartProgress != null) {
      yield r'not_start_progress';
      yield serializers.serialize(
        object.notStartProgress,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.totalLesson != null) {
      yield r'total_lesson';
      yield serializers.serialize(
        object.totalLesson,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.joinedGroup != null) {
      yield r'joined_group';
      yield serializers.serialize(
        object.joinedGroup,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserResponse object, {
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
    required UserResponseBuilder result,
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
        case r'role_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RoleCode),
          ) as RoleCode?;
          if (valueDes == null) continue;
          result.roleCode = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
          break;
        case r'total_progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalProgress = valueDes;
          break;
        case r'remain_progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.remainProgress = valueDes;
          break;
        case r'done_progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.doneProgress = valueDes;
          break;
        case r'not_start_progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.notStartProgress = valueDes;
          break;
        case r'total_lesson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalLesson = valueDes;
          break;
        case r'joined_group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.joinedGroup = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserResponseBuilder();
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
