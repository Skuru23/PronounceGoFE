//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'learn_sentence_request.g.dart';

/// LearnSentenceRequest
///
/// Properties:
/// * [speechText]
@BuiltValue()
abstract class LearnSentenceRequest
    implements Built<LearnSentenceRequest, LearnSentenceRequestBuilder> {
  @BuiltValueField(wireName: r'speech_text')
  String get speechText;

  LearnSentenceRequest._();

  factory LearnSentenceRequest([void updates(LearnSentenceRequestBuilder b)]) =
      _$LearnSentenceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LearnSentenceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LearnSentenceRequest> get serializer =>
      _$LearnSentenceRequestSerializer();
}

class _$LearnSentenceRequestSerializer
    implements PrimitiveSerializer<LearnSentenceRequest> {
  @override
  final Iterable<Type> types = const [
    LearnSentenceRequest,
    _$LearnSentenceRequest
  ];

  @override
  final String wireName = r'LearnSentenceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LearnSentenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'speech_text';
    yield serializers.serialize(
      object.speechText,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LearnSentenceRequest object, {
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
    required LearnSentenceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speech_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.speechText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LearnSentenceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LearnSentenceRequestBuilder();
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
