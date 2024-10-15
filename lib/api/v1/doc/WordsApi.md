# pronunceGo.api.WordsApi

## Load the API package
```dart
import 'package:pronunceGo/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWordDetailApiV1WordsWordIdGet**](WordsApi.md#getworddetailapiv1wordswordidget) | **GET** /api/v1/words/{word_id} | Get Word Detail


# **getWordDetailApiV1WordsWordIdGet**
> WordDetailResponse getWordDetailApiV1WordsWordIdGet(wordId)

Get Word Detail

### Example
```dart
import 'package:pronunceGo/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronunceGo().getWordsApi();
final int wordId = 56; // int | 

try {
    final response = api.getWordDetailApiV1WordsWordIdGet(wordId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WordsApi->getWordDetailApiV1WordsWordIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wordId** | **int**|  | 

### Return type

[**WordDetailResponse**](WordDetailResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

