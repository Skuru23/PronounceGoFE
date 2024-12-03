//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lesson_sentence_base.g.dart';

/// LessonSentenceBase
///
/// Properties:
/// * [id]
/// * [sentence]
@BuiltValue()
abstract class LessonSentenceBase
    implements Built<LessonSentenceBase, LessonSentenceBaseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'sentence')
  String? get sentence;

  LessonSentenceBase._();

  factory LessonSentenceBase([void updates(LessonSentenceBaseBuilder b)]) =
      _$LessonSentenceBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LessonSentenceBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LessonSentenceBase> get serializer =>
      _$LessonSentenceBaseSerializer();
}

class _$LessonSentenceBaseSerializer
    implements PrimitiveSerializer<LessonSentenceBase> {
  @override
  final Iterable<Type> types = const [LessonSentenceBase, _$LessonSentenceBase];

  @override
  final String wireName = r'LessonSentenceBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LessonSentenceBase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sentence != null) {
      yield r'sentence';
      yield serializers.serialize(
        object.sentence,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LessonSentenceBase object, {
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
    required LessonSentenceBaseBuilder result,
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
        case r'sentence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sentence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LessonSentenceBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LessonSentenceBaseBuilder();
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
