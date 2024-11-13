# pronounce_go_api.api.LessonsApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPersonLessonApiV1LessonsPost**](LessonsApi.md#createpersonlessonapiv1lessonspost) | **POST** /api/v1/lessons | Create Person Lesson


# **createPersonLessonApiV1LessonsPost**
> createPersonLessonApiV1LessonsPost(createPersonLessonRequest)

Create Person Lesson

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLessonsApi();
final CreatePersonLessonRequest createPersonLessonRequest = ; // CreatePersonLessonRequest | 

try {
    api.createPersonLessonApiV1LessonsPost(createPersonLessonRequest);
} catch on DioException (e) {
    print('Exception when calling LessonsApi->createPersonLessonApiV1LessonsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPersonLessonRequest** | [**CreatePersonLessonRequest**](CreatePersonLessonRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

