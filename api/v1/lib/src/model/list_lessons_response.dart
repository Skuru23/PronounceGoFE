//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pronounce_go_api/src/model/list_lessons_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_lessons_response.g.dart';

/// ListLessonsResponse
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ListLessonsResponse
    implements Built<ListLessonsResponse, ListLessonsResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ListLessonsItem>? get data;

  ListLessonsResponse._();

  factory ListLessonsResponse([void updates(ListLessonsResponseBuilder b)]) =
      _$ListLessonsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListLessonsResponseBuilder b) =>
      b..data = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<ListLessonsResponse> get serializer =>
      _$ListLessonsResponseSerializer();
}

class _$ListLessonsResponseSerializer
    implements PrimitiveSerializer<ListLessonsResponse> {
  @override
  final Iterable<Type> types = const [
    ListLessonsResponse,
    _$ListLessonsResponse
  ];

  @override
  final String wireName = r'ListLessonsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListLessonsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ListLessonsItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListLessonsResponse object, {
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
    required ListLessonsResponseBuilder result,
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
                const FullType(BuiltList, [FullType(ListLessonsItem)]),
          ) as BuiltList<ListLessonsItem>;
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
  ListLessonsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListLessonsResponseBuilder();
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
