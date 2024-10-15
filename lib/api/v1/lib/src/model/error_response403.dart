//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response403.g.dart';

/// ErrorResponse403
///
/// Properties:
/// * [errorCode]
/// * [message]
/// * [debugInfo]
@BuiltValue()
abstract class ErrorResponse403
    implements Built<ErrorResponse403, ErrorResponse403Builder> {
  @BuiltValueField(wireName: r'error_code')
  String get errorCode;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'debug_info')
  String get debugInfo;

  ErrorResponse403._();

  factory ErrorResponse403([void updates(ErrorResponse403Builder b)]) =
      _$ErrorResponse403;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponse403Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponse403> get serializer =>
      _$ErrorResponse403Serializer();
}

class _$ErrorResponse403Serializer
    implements PrimitiveSerializer<ErrorResponse403> {
  @override
  final Iterable<Type> types = const [ErrorResponse403, _$ErrorResponse403];

  @override
  final String wireName = r'ErrorResponse403';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponse403 object, {
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
    ErrorResponse403 object, {
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
    required ErrorResponse403Builder result,
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
  ErrorResponse403 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponse403Builder();
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
