//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/group_member_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_group_members_response.g.dart';

/// GetGroupMembersResponse
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetGroupMembersResponse
    implements Built<GetGroupMembersResponse, GetGroupMembersResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<GroupMemberItem>? get data;

  GetGroupMembersResponse._();

  factory GetGroupMembersResponse(
          [void updates(GetGroupMembersResponseBuilder b)]) =
      _$GetGroupMembersResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetGroupMembersResponseBuilder b) =>
      b..data = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<GetGroupMembersResponse> get serializer =>
      _$GetGroupMembersResponseSerializer();
}

class _$GetGroupMembersResponseSerializer
    implements PrimitiveSerializer<GetGroupMembersResponse> {
  @override
  final Iterable<Type> types = const [
    GetGroupMembersResponse,
    _$GetGroupMembersResponse
  ];

  @override
  final String wireName = r'GetGroupMembersResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetGroupMembersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(GroupMemberItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetGroupMembersResponse object, {
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
    required GetGroupMembersResponseBuilder result,
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
                const FullType(BuiltList, [FullType(GroupMemberItem)]),
          ) as BuiltList<GroupMemberItem>;
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
  GetGroupMembersResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupMembersResponseBuilder();
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
