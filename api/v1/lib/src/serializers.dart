//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:pronounce_go_api/src/date_serializer.dart';
import 'package:pronounce_go_api/src/model/date.dart';

import 'package:pronounce_go_api/src/model/check_pronounce_request.dart';
import 'package:pronounce_go_api/src/model/check_pronounce_response.dart';
import 'package:pronounce_go_api/src/model/create_group_request.dart';
import 'package:pronounce_go_api/src/model/create_person_lesson_request.dart';
import 'package:pronounce_go_api/src/model/error_response400.dart';
import 'package:pronounce_go_api/src/model/error_response401.dart';
import 'package:pronounce_go_api/src/model/error_response403.dart';
import 'package:pronounce_go_api/src/model/get_group_item.dart';
import 'package:pronounce_go_api/src/model/get_groups_response.dart';
import 'package:pronounce_go_api/src/model/get_lesson_detail_response.dart';
import 'package:pronounce_go_api/src/model/get_me_response.dart';
import 'package:pronounce_go_api/src/model/http_validation_error.dart';
import 'package:pronounce_go_api/src/model/lesson_sentence_base.dart';
import 'package:pronounce_go_api/src/model/list_lessons_item.dart';
import 'package:pronounce_go_api/src/model/list_lessons_response.dart';
import 'package:pronounce_go_api/src/model/listing_word_response.dart';
import 'package:pronounce_go_api/src/model/login_request.dart';
import 'package:pronounce_go_api/src/model/role_code.dart';
import 'package:pronounce_go_api/src/model/signup_request.dart';
import 'package:pronounce_go_api/src/model/token_response.dart';
import 'package:pronounce_go_api/src/model/validation_error.dart';
import 'package:pronounce_go_api/src/model/validation_error_loc_inner.dart';
import 'package:pronounce_go_api/src/model/word_base.dart';
import 'package:pronounce_go_api/src/model/word_detail_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  CheckPronounceRequest,
  CheckPronounceResponse,
  CreateGroupRequest,
  CreatePersonLessonRequest,
  ErrorResponse400,
  ErrorResponse401,
  ErrorResponse403,
  GetGroupItem,
  GetGroupsResponse,
  GetLessonDetailResponse,
  GetMeResponse,
  HTTPValidationError,
  LessonSentenceBase,
  ListLessonsItem,
  ListLessonsResponse,
  ListingWordResponse,
  LoginRequest,
  RoleCode,
  SignupRequest,
  TokenResponse,
  ValidationError,
  ValidationErrorLocInner,
  WordBase,
  WordDetailResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
