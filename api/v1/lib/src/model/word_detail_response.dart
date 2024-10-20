//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'word_detail_response.g.dart';

/// WordDetailResponse
///
/// Properties:
/// * [id]
/// * [word]
/// * [ipa]
/// * [mean]
/// * [difficultLevel]
/// * [pathOfSpeech]
@BuiltValue()
abstract class WordDetailResponse
    implements Built<WordDetailResponse, WordDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'word')
  String? get word;

  @BuiltValueField(wireName: r'ipa')
  String? get ipa;

  @BuiltValueField(wireName: r'mean')
  String? get mean;

  @BuiltValueField(wireName: r'difficult_level')
  int? get difficultLevel;

  @BuiltValueField(wireName: r'path_of_speech')
  String? get pathOfSpeech;

  WordDetailResponse._();

  factory WordDetailResponse([void updates(WordDetailResponseBuilder b)]) =
      _$WordDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WordDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WordDetailResponse> get serializer =>
      _$WordDetailResponseSerializer();
}

class _$WordDetailResponseSerializer
    implements PrimitiveSerializer<WordDetailResponse> {
  @override
  final Iterable<Type> types = const [WordDetailResponse, _$WordDetailResponse];

  @override
  final String wireName = r'WordDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WordDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield object.id == null
        ? null
        : serializers.serialize(
            object.id,
            specifiedType: const FullType.nullable(int),
          );
    yield r'word';
    yield object.word == null
        ? null
        : serializers.serialize(
            object.word,
            specifiedType: const FullType.nullable(String),
          );
    yield r'ipa';
    yield object.ipa == null
        ? null
        : serializers.serialize(
            object.ipa,
            specifiedType: const FullType.nullable(String),
          );
    yield r'mean';
    yield object.mean == null
        ? null
        : serializers.serialize(
            object.mean,
            specifiedType: const FullType.nullable(String),
          );
    yield r'difficult_level';
    yield object.difficultLevel == null
        ? null
        : serializers.serialize(
            object.difficultLevel,
            specifiedType: const FullType.nullable(int),
          );
    yield r'path_of_speech';
    yield object.pathOfSpeech == null
        ? null
        : serializers.serialize(
            object.pathOfSpeech,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    WordDetailResponse object, {
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
    required WordDetailResponseBuilder result,
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
        case r'word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.word = valueDes;
          break;
        case r'ipa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ipa = valueDes;
          break;
        case r'mean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mean = valueDes;
          break;
        case r'difficult_level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.difficultLevel = valueDes;
          break;
        case r'path_of_speech':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pathOfSpeech = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WordDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WordDetailResponseBuilder();
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
