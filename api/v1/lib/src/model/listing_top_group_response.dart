//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/group_base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'listing_top_group_response.g.dart';

/// ListingTopGroupResponse
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ListingTopGroupResponse
    implements Built<ListingTopGroupResponse, ListingTopGroupResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<GroupBase>? get data;

  ListingTopGroupResponse._();

  factory ListingTopGroupResponse(
          [void updates(ListingTopGroupResponseBuilder b)]) =
      _$ListingTopGroupResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListingTopGroupResponseBuilder b) =>
      b..data = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<ListingTopGroupResponse> get serializer =>
      _$ListingTopGroupResponseSerializer();
}

class _$ListingTopGroupResponseSerializer
    implements PrimitiveSerializer<ListingTopGroupResponse> {
  @override
  final Iterable<Type> types = const [
    ListingTopGroupResponse,
    _$ListingTopGroupResponse
  ];

  @override
  final String wireName = r'ListingTopGroupResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListingTopGroupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(GroupBase)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListingTopGroupResponse object, {
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
    required ListingTopGroupResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GroupBase)]),
          ) as BuiltList<GroupBase>;
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
  ListingTopGroupResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListingTopGroupResponseBuilder();
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
