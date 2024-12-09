import 'package:dio/dio.dart';
import 'package:pronounce_go/api/base_api.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

class ProgressRepository {
  ProgressRepository._privateConstructor();
  static final ProgressRepository _instance =
      ProgressRepository._privateConstructor();
  factory ProgressRepository() {
    return _instance;
  }

  final ProgressApi api = BaseApi.getApi().getProgressApi();

  Future<Response<ListingProgressResponse>> getProgresses() async {
    return await api.listingProgressApiV1ProgressesGet();
  }

  Future<Response<ProgressDetailResponse>> getProgressDetail(
      int progressId) async {
    return await api.getProgressDetailApiV1ProgressesProgressIdGet(
        progressId: progressId);
  }
}
