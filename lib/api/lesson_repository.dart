import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonRepositoryProvider = Provider<LessonRepository>((ref) {
  return LessonRepository();
});

class LessonRepository {
  LessonRepository._privateConstructor();
  static final LessonRepository _instance =
      LessonRepository._privateConstructor();
  factory LessonRepository() {
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
    Response response = await lessonApi.createLessonApiV1LessonsPost(
        createPersonLessonRequest: request);

    return response;
  }

  Future<Response> getLessonDetail(int lessonId) async {
    Response response = await lessonApi.getLessonDetailApiV1LessonsLessonIdGet(
        lessonId: lessonId);

    return response;
  }
}
