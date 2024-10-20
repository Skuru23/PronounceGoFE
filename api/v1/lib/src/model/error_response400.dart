//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response400.g.dart';

/// ErrorResponse400
///
/// Properties:
/// * [errorCode]
/// * [message]
/// * [debugInfo]
@BuiltValue()
abstract class ErrorResponse400
    implements Built<ErrorResponse400, ErrorResponse400Builder> {
  @BuiltValueField(wireName: r'error_code')
  String get errorCode;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'debug_info')
  String get debugInfo;

  ErrorResponse400._();

  factory ErrorResponse400([void updates(ErrorResponse400Builder b)]) =
      _$ErrorResponse400;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponse400Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponse400> get serializer =>
      _$ErrorResponse400Serializer();
}

class _$ErrorResponse400Serializer
    implements PrimitiveSerializer<ErrorResponse400> {
  @override
  final Iterable<Type> types = const [ErrorResponse400, _$ErrorResponse400];

  @override
  final String wireName = r'ErrorResponse400';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponse400 object, {
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
    ErrorResponse400 object, {
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
    required ErrorResponse400Builder result,
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
  ErrorResponse400 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponse400Builder();
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
