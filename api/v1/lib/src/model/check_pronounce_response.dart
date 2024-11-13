//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_pronounce_response.g.dart';

/// CheckPronounceResponse
///
/// Properties:
/// * [text]
/// * [ipa]
/// * [error]
/// * [point]
@BuiltValue()
abstract class CheckPronounceResponse
    implements Built<CheckPronounceResponse, CheckPronounceResponseBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'ipa')
  String get ipa;

  @BuiltValueField(wireName: r'error')
  BuiltList<int> get error;

  @BuiltValueField(wireName: r'point')
  int get point;

  CheckPronounceResponse._();

  factory CheckPronounceResponse(
          [void updates(CheckPronounceResponseBuilder b)]) =
      _$CheckPronounceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckPronounceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckPronounceResponse> get serializer =>
      _$CheckPronounceResponseSerializer();
}

class _$CheckPronounceResponseSerializer
    implements PrimitiveSerializer<CheckPronounceResponse> {
  @override
  final Iterable<Type> types = const [
    CheckPronounceResponse,
    _$CheckPronounceResponse
  ];

  @override
  final String wireName = r'CheckPronounceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckPronounceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'ipa';
    yield serializers.serialize(
      object.ipa,
      specifiedType: const FullType(String),
    );
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'point';
    yield serializers.serialize(
      object.point,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckPronounceResponse object, {
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
    required CheckPronounceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'ipa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipa = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.error.replace(valueDes);
          break;
        case r'point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.point = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckPronounceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckPronounceResponseBuilder();
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
