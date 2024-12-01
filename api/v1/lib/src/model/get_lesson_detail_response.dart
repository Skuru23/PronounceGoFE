//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pronounce_go_api/src/model/word_base.dart';
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/lesson_sentence_base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_lesson_detail_response.g.dart';

/// GetLessonDetailResponse
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [userOwnerId]
/// * [groupOwnerId]
/// * [isPublic]
/// * [creatorName]
/// * [groupOwnerName]
/// * [words] - List of words in the lesson
/// * [sentences] - List of sentences in the lesson
@BuiltValue()
abstract class GetLessonDetailResponse
    implements Built<GetLessonDetailResponse, GetLessonDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'user_owner_id')
  int? get userOwnerId;

  @BuiltValueField(wireName: r'group_owner_id')
  int? get groupOwnerId;

  @BuiltValueField(wireName: r'is_public')
  bool? get isPublic;

  @BuiltValueField(wireName: r'creator_name')
  String? get creatorName;

  @BuiltValueField(wireName: r'group_owner_name')
  String? get groupOwnerName;

  /// List of words in the lesson
  @BuiltValueField(wireName: r'words')
  BuiltList<WordBase>? get words;

  /// List of sentences in the lesson
  @BuiltValueField(wireName: r'sentences')
  BuiltList<LessonSentenceBase>? get sentences;

  GetLessonDetailResponse._();

  factory GetLessonDetailResponse(
          [void updates(GetLessonDetailResponseBuilder b)]) =
      _$GetLessonDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLessonDetailResponseBuilder b) => b
    ..words = ListBuilder()
    ..sentences = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLessonDetailResponse> get serializer =>
      _$GetLessonDetailResponseSerializer();
}

class _$GetLessonDetailResponseSerializer
    implements PrimitiveSerializer<GetLessonDetailResponse> {
  @override
  final Iterable<Type> types = const [
    GetLessonDetailResponse,
    _$GetLessonDetailResponse
  ];

  @override
  final String wireName = r'GetLessonDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLessonDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield object.id == null
        ? null
        : serializers.serialize(
            object.id,
            specifiedType: const FullType.nullable(int),
          );
    yield r'name';
    yield object.name == null
        ? null
        : serializers.serialize(
            object.name,
            specifiedType: const FullType.nullable(String),
          );
    yield r'description';
    yield object.description == null
        ? null
        : serializers.serialize(
            object.description,
            specifiedType: const FullType.nullable(String),
          );
    yield r'user_owner_id';
    yield object.userOwnerId == null
        ? null
        : serializers.serialize(
            object.userOwnerId,
            specifiedType: const FullType.nullable(int),
          );
    yield r'group_owner_id';
    yield object.groupOwnerId == null
        ? null
        : serializers.serialize(
            object.groupOwnerId,
            specifiedType: const FullType.nullable(int),
          );
    yield r'is_public';
    yield object.isPublic == null
        ? null
        : serializers.serialize(
            object.isPublic,
            specifiedType: const FullType.nullable(bool),
          );
    if (object.creatorName != null) {
      yield r'creator_name';
      yield serializers.serialize(
        object.creatorName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.groupOwnerName != null) {
      yield r'group_owner_name';
      yield serializers.serialize(
        object.groupOwnerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.words != null) {
      yield r'words';
      yield serializers.serialize(
        object.words,
        specifiedType: const FullType(BuiltList, [FullType(WordBase)]),
      );
    }
    if (object.sentences != null) {
      yield r'sentences';
      yield serializers.serialize(
        object.sentences,
        specifiedType:
            const FullType(BuiltList, [FullType(LessonSentenceBase)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLessonDetailResponse object, {
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
    required GetLessonDetailResponseBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'user_owner_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.userOwnerId = valueDes;
          break;
        case r'group_owner_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.groupOwnerId = valueDes;
          break;
        case r'is_public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPublic = valueDes;
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
        case r'words':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WordBase)]),
          ) as BuiltList<WordBase>;
          result.words.replace(valueDes);
          break;
        case r'sentences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LessonSentenceBase)]),
          ) as BuiltList<LessonSentenceBase>;
          result.sentences.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetLessonDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLessonDetailResponseBuilder();
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
