# pronounce_go_api.api.LessonsApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLessonApiV1LessonsPost**](LessonsApi.md#createlessonapiv1lessonspost) | **POST** /api/v1/lessons | Create Lesson
[**getLessonDetailApiV1LessonsLessonIdGet**](LessonsApi.md#getlessondetailapiv1lessonslessonidget) | **GET** /api/v1/lessons/{lesson_id} | Get Lesson Detail
[**learnLessonApiV1LessonsLessonIdLearnPost**](LessonsApi.md#learnlessonapiv1lessonslessonidlearnpost) | **POST** /api/v1/lessons/{lesson_id}/learn | Learn Lesson
[**listingLessonsApiV1LessonsGet**](LessonsApi.md#listinglessonsapiv1lessonsget) | **GET** /api/v1/lessons | Listing Lessons
[**updateLessonApiV1LessonsLessonIdPut**](LessonsApi.md#updatelessonapiv1lessonslessonidput) | **PUT** /api/v1/lessons/{lesson_id} | Update Lesson


# **createLessonApiV1LessonsPost**
> createLessonApiV1LessonsPost(createPersonLessonRequest)

Create Lesson

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLessonsApi();
final CreatePersonLessonRequest createPersonLessonRequest = ; // CreatePersonLessonRequest | 

try {
    api.createLessonApiV1LessonsPost(createPersonLessonRequest);
} catch on DioException (e) {
    print('Exception when calling LessonsApi->createLessonApiV1LessonsPost: $e\n');
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

# **getLessonDetailApiV1LessonsLessonIdGet**
> GetLessonDetailResponse getLessonDetailApiV1LessonsLessonIdGet(lessonId)

Get Lesson Detail

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLessonsApi();
final int lessonId = 56; // int | 

try {
    final response = api.getLessonDetailApiV1LessonsLessonIdGet(lessonId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LessonsApi->getLessonDetailApiV1LessonsLessonIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lessonId** | **int**|  | 

### Return type

[**GetLessonDetailResponse**](GetLessonDetailResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **learnLessonApiV1LessonsLessonIdLearnPost**
> learnLessonApiV1LessonsLessonIdLearnPost(lessonId)

Learn Lesson

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLessonsApi();
final int lessonId = 56; // int | 

try {
    api.learnLessonApiV1LessonsLessonIdLearnPost(lessonId);
} catch on DioException (e) {
    print('Exception when calling LessonsApi->learnLessonApiV1LessonsLessonIdLearnPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lessonId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingLessonsApiV1LessonsGet**
> ListLessonsResponse listingLessonsApiV1LessonsGet(isPublic, userOwnerId, groupOwnerId, keyword)

Listing Lessons

### Example
```dart
import 'package:pronounce_go_api/api.dart';

final api = PronounceGoApi().getLessonsApi();
final bool isPublic = true; // bool | 
final String userOwnerId = userOwnerId_example; // String | 
final String groupOwnerId = groupOwnerId_example; // String | 
final String keyword = keyword_example; // String | 

try {
    final response = api.listingLessonsApiV1LessonsGet(isPublic, userOwnerId, groupOwnerId, keyword);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LessonsApi->listingLessonsApiV1LessonsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isPublic** | **bool**|  | [optional] 
 **userOwnerId** | **String**|  | [optional] 
 **groupOwnerId** | **String**|  | [optional] 
 **keyword** | **String**|  | [optional] 

### Return type

[**ListLessonsResponse**](ListLessonsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLessonApiV1LessonsLessonIdPut**
> updateLessonApiV1LessonsLessonIdPut(lessonId, updateLessonRequest)

Update Lesson

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLessonsApi();
final int lessonId = 56; // int | 
final UpdateLessonRequest updateLessonRequest = ; // UpdateLessonRequest | 

try {
    api.updateLessonApiV1LessonsLessonIdPut(lessonId, updateLessonRequest);
} catch on DioException (e) {
    print('Exception when calling LessonsApi->updateLessonApiV1LessonsLessonIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lessonId** | **int**|  | 
 **updateLessonRequest** | [**UpdateLessonRequest**](UpdateLessonRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

