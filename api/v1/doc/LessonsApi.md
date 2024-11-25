# pronounce_go_api.api.LessonsApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPersonLessonApiV1LessonsPost**](LessonsApi.md#createpersonlessonapiv1lessonspost) | **POST** /api/v1/lessons | Create Person Lesson
[**listingLessonsApiV1LessonsGet**](LessonsApi.md#listinglessonsapiv1lessonsget) | **GET** /api/v1/lessons | Listing Lessons


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

