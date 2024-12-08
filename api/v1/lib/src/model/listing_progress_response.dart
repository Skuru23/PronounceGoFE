//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/listing_progress_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'listing_progress_response.g.dart';

/// ListingProgressResponse
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ListingProgressResponse
    implements Built<ListingProgressResponse, ListingProgressResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ListingProgressItem>? get data;

  ListingProgressResponse._();

  factory ListingProgressResponse(
          [void updates(ListingProgressResponseBuilder b)]) =
      _$ListingProgressResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListingProgressResponseBuilder b) =>
      b..data = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<ListingProgressResponse> get serializer =>
      _$ListingProgressResponseSerializer();
}

class _$ListingProgressResponseSerializer
    implements PrimitiveSerializer<ListingProgressResponse> {
  @override
  final Iterable<Type> types = const [
    ListingProgressResponse,
    _$ListingProgressResponse
  ];

  @override
  final String wireName = r'ListingProgressResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListingProgressResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType:
            const FullType(BuiltList, [FullType(ListingProgressItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListingProgressResponse object, {
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
    required ListingProgressResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ListingProgressItem)]),
          ) as BuiltList<ListingProgressItem>;
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
  ListingProgressResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListingProgressResponseBuilder();
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
