//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pronounce_go_api/src/model/item_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'progress_sentence_detail_item.g.dart';

/// ProgressSentenceDetailItem
///
/// Properties:
/// * [id]
/// * [progressId]
/// * [itemId]
/// * [status]
/// * [sentence]
@BuiltValue()
abstract class ProgressSentenceDetailItem
    implements
        Built<ProgressSentenceDetailItem, ProgressSentenceDetailItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'progress_id')
  int get progressId;

  @BuiltValueField(wireName: r'item_id')
  int get itemId;

  @BuiltValueField(wireName: r'status')
  ItemStatus? get status;
  // enum statusEnum {  NOT_STARTED,  IN_PROGRESS,  DONE,  };

  @BuiltValueField(wireName: r'sentence')
  String get sentence;

  ProgressSentenceDetailItem._();

  factory ProgressSentenceDetailItem(
          [void updates(ProgressSentenceDetailItemBuilder b)]) =
      _$ProgressSentenceDetailItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProgressSentenceDetailItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProgressSentenceDetailItem> get serializer =>
      _$ProgressSentenceDetailItemSerializer();
}

class _$ProgressSentenceDetailItemSerializer
    implements PrimitiveSerializer<ProgressSentenceDetailItem> {
  @override
  final Iterable<Type> types = const [
    ProgressSentenceDetailItem,
    _$ProgressSentenceDetailItem
  ];

  @override
  final String wireName = r'ProgressSentenceDetailItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProgressSentenceDetailItem object, {
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
    yield r'sentence';
    yield serializers.serialize(
      object.sentence,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProgressSentenceDetailItem object, {
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
    required ProgressSentenceDetailItemBuilder result,
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
        case r'sentence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  ProgressSentenceDetailItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressSentenceDetailItemBuilder();
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
