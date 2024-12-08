//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'learn_word_request.g.dart';

/// LearnWordRequest
///
/// Properties:
/// * [speechText]
@BuiltValue()
abstract class LearnWordRequest
    implements Built<LearnWordRequest, LearnWordRequestBuilder> {
  @BuiltValueField(wireName: r'speech_text')
  String get speechText;

  LearnWordRequest._();

  factory LearnWordRequest([void updates(LearnWordRequestBuilder b)]) =
      _$LearnWordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LearnWordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LearnWordRequest> get serializer =>
      _$LearnWordRequestSerializer();
}

class _$LearnWordRequestSerializer
    implements PrimitiveSerializer<LearnWordRequest> {
  @override
  final Iterable<Type> types = const [LearnWordRequest, _$LearnWordRequest];

  @override
  final String wireName = r'LearnWordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LearnWordRequest object, {
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
    LearnWordRequest object, {
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
    required LearnWordRequestBuilder result,
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
  LearnWordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LearnWordRequestBuilder();
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
