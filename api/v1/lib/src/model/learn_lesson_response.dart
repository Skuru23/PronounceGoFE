//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'learn_lesson_response.g.dart';

/// LearnLessonResponse
///
/// Properties:
/// * [progress]
@BuiltValue()
abstract class LearnLessonResponse
    implements Built<LearnLessonResponse, LearnLessonResponseBuilder> {
  @BuiltValueField(wireName: r'progress')
  int get progress;

  LearnLessonResponse._();

  factory LearnLessonResponse([void updates(LearnLessonResponseBuilder b)]) =
      _$LearnLessonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LearnLessonResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LearnLessonResponse> get serializer =>
      _$LearnLessonResponseSerializer();
}

class _$LearnLessonResponseSerializer
    implements PrimitiveSerializer<LearnLessonResponse> {
  @override
  final Iterable<Type> types = const [
    LearnLessonResponse,
    _$LearnLessonResponse
  ];

  @override
  final String wireName = r'LearnLessonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LearnLessonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'progress';
    yield serializers.serialize(
      object.progress,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LearnLessonResponse object, {
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
    required LearnLessonResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.progress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LearnLessonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LearnLessonResponseBuilder();
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
