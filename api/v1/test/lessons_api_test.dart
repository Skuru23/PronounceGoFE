import 'package:test/test.dart';
import 'package:pronounce_go_api/pronounce_go_api.dart';

/// tests for LessonsApi
void main() {
  final instance = PronounceGoApi().getLessonsApi();

  group(LessonsApi, () {
    // Create Person Lesson
    //
    //Future createPersonLessonApiV1LessonsPost(CreatePersonLessonRequest createPersonLessonRequest) async
    test('test createPersonLessonApiV1LessonsPost', () async {
      // TODO
    });
  });
}
