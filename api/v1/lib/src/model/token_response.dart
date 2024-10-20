//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_response.g.dart';

/// TokenResponse
///
/// Properties:
/// * [tokenType]
/// * [accessToken]
/// * [expireAt]
/// * [refreshToken]
/// * [refreshExpireAt]
@BuiltValue()
abstract class TokenResponse
    implements Built<TokenResponse, TokenResponseBuilder> {
  @BuiltValueField(wireName: r'token_type')
  String get tokenType;

  @BuiltValueField(wireName: r'access_token')
  String get accessToken;

  @BuiltValueField(wireName: r'expire_at')
  DateTime get expireAt;

  @BuiltValueField(wireName: r'refresh_token')
  String get refreshToken;

  @BuiltValueField(wireName: r'refresh_expire_at')
  DateTime get refreshExpireAt;

  TokenResponse._();

  factory TokenResponse([void updates(TokenResponseBuilder b)]) =
      _$TokenResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenResponse> get serializer =>
      _$TokenResponseSerializer();
}

class _$TokenResponseSerializer implements PrimitiveSerializer<TokenResponse> {
  @override
  final Iterable<Type> types = const [TokenResponse, _$TokenResponse];

  @override
  final String wireName = r'TokenResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token_type';
    yield serializers.serialize(
      object.tokenType,
      specifiedType: const FullType(String),
    );
    yield r'access_token';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'expire_at';
    yield serializers.serialize(
      object.expireAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'refresh_token';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
    yield r'refresh_expire_at';
    yield serializers.serialize(
      object.refreshExpireAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenResponse object, {
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
    required TokenResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenType = valueDes;
          break;
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'expire_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expireAt = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'refresh_expire_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.refreshExpireAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenResponseBuilder();
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
