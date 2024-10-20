//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pronounce_go_api/src/model/role_code.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_me_response.g.dart';

/// GetMeResponse
///
/// Properties:
/// * [id]
/// * [roleCode]
/// * [email]
/// * [name]
/// * [phone]
/// * [address]
@BuiltValue()
abstract class GetMeResponse
    implements Built<GetMeResponse, GetMeResponseBuilder> {
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

  GetMeResponse._();

  factory GetMeResponse([void updates(GetMeResponseBuilder b)]) =
      _$GetMeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMeResponse> get serializer =>
      _$GetMeResponseSerializer();
}

class _$GetMeResponseSerializer implements PrimitiveSerializer<GetMeResponse> {
  @override
  final Iterable<Type> types = const [GetMeResponse, _$GetMeResponse];

  @override
  final String wireName = r'GetMeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMeResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMeResponse object, {
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
    required GetMeResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMeResponseBuilder();
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
