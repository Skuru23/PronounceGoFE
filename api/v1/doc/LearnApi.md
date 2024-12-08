# pronounce_go_api.api.LearnApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**learnSentenceApiV1LearnSentencesProgressSentenceIdPost**](LearnApi.md#learnsentenceapiv1learnsentencesprogresssentenceidpost) | **POST** /api/v1/learn/sentences/{progress_sentence_id} | Learn Sentence
[**learnWordApiV1LearnWordsProgressWordIdPost**](LearnApi.md#learnwordapiv1learnwordsprogresswordidpost) | **POST** /api/v1/learn/words/{progress_word_id} | Learn Word


# **learnSentenceApiV1LearnSentencesProgressSentenceIdPost**
> LearnSentenceResponse learnSentenceApiV1LearnSentencesProgressSentenceIdPost(progressSentenceId, learnSentenceRequest)

Learn Sentence

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLearnApi();
final int progressSentenceId = 56; // int | 
final LearnSentenceRequest learnSentenceRequest = ; // LearnSentenceRequest | 

try {
    final response = api.learnSentenceApiV1LearnSentencesProgressSentenceIdPost(progressSentenceId, learnSentenceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LearnApi->learnSentenceApiV1LearnSentencesProgressSentenceIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **progressSentenceId** | **int**|  | 
 **learnSentenceRequest** | [**LearnSentenceRequest**](LearnSentenceRequest.md)|  | 

### Return type

[**LearnSentenceResponse**](LearnSentenceResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **learnWordApiV1LearnWordsProgressWordIdPost**
> LearnWordResponse learnWordApiV1LearnWordsProgressWordIdPost(progressWordId, learnWordRequest)

Learn Word

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getLearnApi();
final int progressWordId = 56; // int | 
final LearnWordRequest learnWordRequest = ; // LearnWordRequest | 

try {
    final response = api.learnWordApiV1LearnWordsProgressWordIdPost(progressWordId, learnWordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LearnApi->learnWordApiV1LearnWordsProgressWordIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **progressWordId** | **int**|  | 
 **learnWordRequest** | [**LearnWordRequest**](LearnWordRequest.md)|  | 

### Return type

[**LearnWordResponse**](LearnWordResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

