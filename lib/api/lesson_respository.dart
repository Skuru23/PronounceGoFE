import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class LessonRespository {
  LessonRespository._privateConstructor();
  static final LessonRespository _instance =
      LessonRespository._privateConstructor();
  factory LessonRespository() {
    return _instance;
  }

  final LessonsApi lessonApi = BaseApi.getApi().getLessonsApi();

  Future<Response> getLesson(
      {bool is_public = true,
      int? userOwnerId,
      int? groupOwnerId,
      String? keyword}) async {
    Response<ListLessonsResponse> response =
        await lessonApi.listingLessonsApiV1LessonsGet(
            isPublic: is_public,
            userOwnerId: userOwnerId != null ? userOwnerId.toString() : '',
            groupOwnerId: groupOwnerId != null ? groupOwnerId.toString() : '',
            keyword: keyword);

    return response;
  }

  Future<Response> createPersonLesson(CreatePersonLessonRequest request) async {
    Response response = await lessonApi.createPersonLessonApiV1LessonsPost(
        createPersonLessonRequest: request);

    return response;
  }
}
