//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pronounce_go_api/src/model/word_base.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'listing_word_response.g.dart';

/// ListingWordResponse
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ListingWordResponse
    implements Built<ListingWordResponse, ListingWordResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<WordBase> get data;

  ListingWordResponse._();

  factory ListingWordResponse([void updates(ListingWordResponseBuilder b)]) =
      _$ListingWordResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListingWordResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListingWordResponse> get serializer =>
      _$ListingWordResponseSerializer();
}

class _$ListingWordResponseSerializer
    implements PrimitiveSerializer<ListingWordResponse> {
  @override
  final Iterable<Type> types = const [
    ListingWordResponse,
    _$ListingWordResponse
  ];

  @override
  final String wireName = r'ListingWordResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListingWordResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(WordBase)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListingWordResponse object, {
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
    required ListingWordResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WordBase)]),
          ) as BuiltList<WordBase>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListingWordResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListingWordResponseBuilder();
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
