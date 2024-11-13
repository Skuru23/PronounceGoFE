//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_pronounce_request.g.dart';

/// CheckPronounceRequest
///
/// Properties:
/// * [resultText]
/// * [expectText]
@BuiltValue()
abstract class CheckPronounceRequest
    implements Built<CheckPronounceRequest, CheckPronounceRequestBuilder> {
  @BuiltValueField(wireName: r'result_text')
  String get resultText;

  @BuiltValueField(wireName: r'expect_text')
  String get expectText;

  CheckPronounceRequest._();

  factory CheckPronounceRequest(
      [void updates(CheckPronounceRequestBuilder b)]) = _$CheckPronounceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckPronounceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckPronounceRequest> get serializer =>
      _$CheckPronounceRequestSerializer();
}

class _$CheckPronounceRequestSerializer
    implements PrimitiveSerializer<CheckPronounceRequest> {
  @override
  final Iterable<Type> types = const [
    CheckPronounceRequest,
    _$CheckPronounceRequest
  ];

  @override
  final String wireName = r'CheckPronounceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckPronounceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'result_text';
    yield serializers.serialize(
      object.resultText,
      specifiedType: const FullType(String),
    );
    yield r'expect_text';
    yield serializers.serialize(
      object.expectText,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckPronounceRequest object, {
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
    required CheckPronounceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resultText = valueDes;
          break;
        case r'expect_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expectText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckPronounceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckPronounceRequestBuilder();
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
