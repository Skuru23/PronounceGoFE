//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/lesson_base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommend_lesson_response.g.dart';

/// RecommendLessonResponse
///
/// Properties:
/// * [hotLessons] - List of hot lessons
/// * [newLessons] - List of new lessons
@BuiltValue()
abstract class RecommendLessonResponse
    implements Built<RecommendLessonResponse, RecommendLessonResponseBuilder> {
  /// List of hot lessons
  @BuiltValueField(wireName: r'hot_lessons')
  BuiltList<LessonBase>? get hotLessons;

  /// List of new lessons
  @BuiltValueField(wireName: r'new_lessons')
  BuiltList<LessonBase>? get newLessons;

  RecommendLessonResponse._();

  factory RecommendLessonResponse(
          [void updates(RecommendLessonResponseBuilder b)]) =
      _$RecommendLessonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendLessonResponseBuilder b) => b
    ..hotLessons = ListBuilder()
    ..newLessons = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendLessonResponse> get serializer =>
      _$RecommendLessonResponseSerializer();
}

class _$RecommendLessonResponseSerializer
    implements PrimitiveSerializer<RecommendLessonResponse> {
  @override
  final Iterable<Type> types = const [
    RecommendLessonResponse,
    _$RecommendLessonResponse
  ];

  @override
  final String wireName = r'RecommendLessonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendLessonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hotLessons != null) {
      yield r'hot_lessons';
      yield serializers.serialize(
        object.hotLessons,
        specifiedType: const FullType(BuiltList, [FullType(LessonBase)]),
      );
    }
    if (object.newLessons != null) {
      yield r'new_lessons';
      yield serializers.serialize(
        object.newLessons,
        specifiedType: const FullType(BuiltList, [FullType(LessonBase)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendLessonResponse object, {
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
    required RecommendLessonResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hot_lessons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LessonBase)]),
          ) as BuiltList<LessonBase>;
          result.hotLessons.replace(valueDes);
          break;
        case r'new_lessons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LessonBase)]),
          ) as BuiltList<LessonBase>;
          result.newLessons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendLessonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendLessonResponseBuilder();
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
