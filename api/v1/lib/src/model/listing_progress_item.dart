//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'listing_progress_item.g.dart';

/// ListingProgressItem
///
/// Properties:
/// * [id]
/// * [lessonId]
/// * [lessonName]
/// * [totalWord]
/// * [remainWord]
/// * [totalSentence]
/// * [remainSentence]
/// * [finishPercent]
@BuiltValue()
abstract class ListingProgressItem
    implements Built<ListingProgressItem, ListingProgressItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'lesson_id')
  int get lessonId;

  @BuiltValueField(wireName: r'lesson_name')
  String? get lessonName;

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

  ListingProgressItem._();

  factory ListingProgressItem([void updates(ListingProgressItemBuilder b)]) =
      _$ListingProgressItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListingProgressItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListingProgressItem> get serializer =>
      _$ListingProgressItemSerializer();
}

class _$ListingProgressItemSerializer
    implements PrimitiveSerializer<ListingProgressItem> {
  @override
  final Iterable<Type> types = const [
    ListingProgressItem,
    _$ListingProgressItem
  ];

  @override
  final String wireName = r'ListingProgressItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListingProgressItem object, {
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
    ListingProgressItem object, {
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
    required ListingProgressItemBuilder result,
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
  ListingProgressItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListingProgressItemBuilder();
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
