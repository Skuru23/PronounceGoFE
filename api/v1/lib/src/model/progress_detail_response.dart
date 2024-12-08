//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'progress_detail_response.g.dart';

/// ProgressDetailResponse
///
/// Properties:
/// * [id]
/// * [lessonId]
/// * [lessonName]
/// * [creatorName]
/// * [groupOwnerName]
/// * [totalWord]
/// * [remainWord]
/// * [totalSentence]
/// * [remainSentence]
/// * [finishPercent]
@BuiltValue()
abstract class ProgressDetailResponse
    implements Built<ProgressDetailResponse, ProgressDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'lesson_id')
  int get lessonId;

  @BuiltValueField(wireName: r'lesson_name')
  String? get lessonName;

  @BuiltValueField(wireName: r'creator_name')
  String? get creatorName;

  @BuiltValueField(wireName: r'group_owner_name')
  String? get groupOwnerName;

  @BuiltValueField(wireName: r'total_word')
  int? get totalWord;

  @BuiltValueField(wireName: r'remain_word')
  int? get remainWord;

  @BuiltValueField(wireName: r'total_sentence')
  int? get totalSentence;

  @BuiltValueField(wireName: r'remain_sentence')
  int? get remainSentence;

  @BuiltValueField(wireName: r'finish_percent')
  int? get finishPercent;

  ProgressDetailResponse._();

  factory ProgressDetailResponse(
          [void updates(ProgressDetailResponseBuilder b)]) =
      _$ProgressDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProgressDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProgressDetailResponse> get serializer =>
      _$ProgressDetailResponseSerializer();
}

class _$ProgressDetailResponseSerializer
    implements PrimitiveSerializer<ProgressDetailResponse> {
  @override
  final Iterable<Type> types = const [
    ProgressDetailResponse,
    _$ProgressDetailResponse
  ];

  @override
  final String wireName = r'ProgressDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProgressDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'lesson_id';
    yield serializers.serialize(
      object.lessonId,
      specifiedType: const FullType(int),
    );
    yield r'lesson_name';
    yield object.lessonName == null
        ? null
        : serializers.serialize(
            object.lessonName,
            specifiedType: const FullType.nullable(String),
          );
    yield r'creator_name';
    yield object.creatorName == null
        ? null
        : serializers.serialize(
            object.creatorName,
            specifiedType: const FullType.nullable(String),
          );
    yield r'group_owner_name';
    yield object.groupOwnerName == null
        ? null
        : serializers.serialize(
            object.groupOwnerName,
            specifiedType: const FullType.nullable(String),
          );
    if (object.totalWord != null) {
      yield r'total_word';
      yield serializers.serialize(
        object.totalWord,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.remainWord != null) {
      yield r'remain_word';
      yield serializers.serialize(
        object.remainWord,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.totalSentence != null) {
      yield r'total_sentence';
      yield serializers.serialize(
        object.totalSentence,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.remainSentence != null) {
      yield r'remain_sentence';
      yield serializers.serialize(
        object.remainSentence,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.finishPercent != null) {
      yield r'finish_percent';
      yield serializers.serialize(
        object.finishPercent,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProgressDetailResponse object, {
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
    required ProgressDetailResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'lesson_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lessonId = valueDes;
          break;
        case r'lesson_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lessonName = valueDes;
          break;
        case r'creator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorName = valueDes;
          break;
        case r'group_owner_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.groupOwnerName = valueDes;
          break;
        case r'total_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalWord = valueDes;
          break;
        case r'remain_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.remainWord = valueDes;
          break;
        case r'total_sentence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSentence = valueDes;
          break;
        case r'remain_sentence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.remainSentence = valueDes;
          break;
        case r'finish_percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.finishPercent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProgressDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressDetailResponseBuilder();
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
