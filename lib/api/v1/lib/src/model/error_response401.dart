//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response401.g.dart';

/// ErrorResponse401
///
/// Properties:
/// * [errorCode]
/// * [message]
/// * [debugInfo]
@BuiltValue()
abstract class ErrorResponse401
    implements Built<ErrorResponse401, ErrorResponse401Builder> {
  @BuiltValueField(wireName: r'error_code')
  String get errorCode;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'debug_info')
  String get debugInfo;

  ErrorResponse401._();

  factory ErrorResponse401([void updates(ErrorResponse401Builder b)]) =
      _$ErrorResponse401;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponse401Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponse401> get serializer =>
      _$ErrorResponse401Serializer();
}

class _$ErrorResponse401Serializer
    implements PrimitiveSerializer<ErrorResponse401> {
  @override
  final Iterable<Type> types = const [ErrorResponse401, _$ErrorResponse401];

  @override
  final String wireName = r'ErrorResponse401';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponse401 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error_code';
    yield serializers.serialize(
      object.errorCode,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'debug_info';
    yield serializers.serialize(
      object.debugInfo,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponse401 object, {
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
    required ErrorResponse401Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorCode = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'debug_info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.debugInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorResponse401 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponse401Builder();
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
