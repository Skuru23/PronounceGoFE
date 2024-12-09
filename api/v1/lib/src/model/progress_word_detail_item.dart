//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pronounce_go_api/src/model/item_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'progress_word_detail_item.g.dart';

/// ProgressWordDetailItem
///
/// Properties:
/// * [id]
/// * [progressId]
/// * [itemId]
/// * [status]
/// * [wordId]
/// * [word]
/// * [ipa]
@BuiltValue()
abstract class ProgressWordDetailItem
    implements Built<ProgressWordDetailItem, ProgressWordDetailItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'progress_id')
  int get progressId;

  @BuiltValueField(wireName: r'item_id')
  int get itemId;

  @BuiltValueField(wireName: r'status')
  ItemStatus? get status;
  // enum statusEnum {  NOT_STARTED,  IN_PROGRESS,  DONE,  };

  @BuiltValueField(wireName: r'word_id')
  int get wordId;

  @BuiltValueField(wireName: r'word')
  String get word;

  @BuiltValueField(wireName: r'ipa')
  String? get ipa;

  ProgressWordDetailItem._();

  factory ProgressWordDetailItem(
          [void updates(ProgressWordDetailItemBuilder b)]) =
      _$ProgressWordDetailItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProgressWordDetailItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProgressWordDetailItem> get serializer =>
      _$ProgressWordDetailItemSerializer();
}

class _$ProgressWordDetailItemSerializer
    implements PrimitiveSerializer<ProgressWordDetailItem> {
  @override
  final Iterable<Type> types = const [
    ProgressWordDetailItem,
    _$ProgressWordDetailItem
  ];

  @override
  final String wireName = r'ProgressWordDetailItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProgressWordDetailItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'progress_id';
    yield serializers.serialize(
      object.progressId,
      specifiedType: const FullType(int),
    );
    yield r'item_id';
    yield serializers.serialize(
      object.itemId,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield object.status == null
        ? null
        : serializers.serialize(
            object.status,
            specifiedType: const FullType.nullable(ItemStatus),
          );
    yield r'word_id';
    yield serializers.serialize(
      object.wordId,
      specifiedType: const FullType(int),
    );
    yield r'word';
    yield serializers.serialize(
      object.word,
      specifiedType: const FullType(String),
    );
    yield r'ipa';
    yield object.ipa == null
        ? null
        : serializers.serialize(
            object.ipa,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProgressWordDetailItem object, {
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
    required ProgressWordDetailItemBuilder result,
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
        case r'progress_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.progressId = valueDes;
          break;
        case r'item_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.itemId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemStatus),
          ) as ItemStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'word_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.wordId = valueDes;
          break;
        case r'word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProgressWordDetailItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressWordDetailItemBuilder();
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
