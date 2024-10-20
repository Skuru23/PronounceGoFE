// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ErrorResponse400.serializer)
      ..add(ErrorResponse401.serializer)
      ..add(ErrorResponse403.serializer)
      ..add(GetMeResponse.serializer)
      ..add(HTTPValidationError.serializer)
      ..add(LoginRequest.serializer)
      ..add(RoleCode.serializer)
      ..add(SignupRequest.serializer)
      ..add(TokenResponse.serializer)
      ..add(ValidationError.serializer)
      ..add(ValidationErrorLocInner.serializer)
      ..add(WordDetailResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ValidationError)]),
          () => new ListBuilder<ValidationError>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ValidationErrorLocInner)]),
          () => new ListBuilder<ValidationErrorLocInner>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
