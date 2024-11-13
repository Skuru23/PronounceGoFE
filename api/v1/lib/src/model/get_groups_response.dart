//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/get_group_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_groups_response.g.dart';

/// GetGroupsResponse
///
/// Properties:
/// * [page]
/// * [perPage]
/// * [total]
/// * [data]
@BuiltValue()
abstract class GetGroupsResponse
    implements Built<GetGroupsResponse, GetGroupsResponseBuilder> {
  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'per_page')
  int get perPage;

  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'data')
  BuiltList<GetGroupItem> get data;

  GetGroupsResponse._();

  factory GetGroupsResponse([void updates(GetGroupsResponseBuilder b)]) =
      _$GetGroupsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetGroupsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetGroupsResponse> get serializer =>
      _$GetGroupsResponseSerializer();
}

class _$GetGroupsResponseSerializer
    implements PrimitiveSerializer<GetGroupsResponse> {
  @override
  final Iterable<Type> types = const [GetGroupsResponse, _$GetGroupsResponse];

  @override
  final String wireName = r'GetGroupsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetGroupsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'per_page';
    yield serializers.serialize(
      object.perPage,
      specifiedType: const FullType(int),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(GetGroupItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetGroupsResponse object, {
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
    required GetGroupsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'per_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perPage = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetGroupItem)]),
          ) as BuiltList<GetGroupItem>;
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
  GetGroupsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupsResponseBuilder();
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
