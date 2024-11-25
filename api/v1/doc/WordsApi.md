# pronounce_go_api.api.WordsApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkPronounceApiV1WordsCheckPost**](WordsApi.md#checkpronounceapiv1wordscheckpost) | **POST** /api/v1/words/check | Check Pronounce
[**getWordDetailApiV1WordsWordIdGet**](WordsApi.md#getworddetailapiv1wordswordidget) | **GET** /api/v1/words/{word_id} | Get Word Detail
[**listingWordApiV1WordsGet**](WordsApi.md#listingwordapiv1wordsget) | **GET** /api/v1/words | Listing Word


# **checkPronounceApiV1WordsCheckPost**
> CheckPronounceResponse checkPronounceApiV1WordsCheckPost(checkPronounceRequest)

Check Pronounce

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getWordsApi();
final CheckPronounceRequest checkPronounceRequest = ; // CheckPronounceRequest | 

try {
    final response = api.checkPronounceApiV1WordsCheckPost(checkPronounceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WordsApi->checkPronounceApiV1WordsCheckPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkPronounceRequest** | [**CheckPronounceRequest**](CheckPronounceRequest.md)|  | 

### Return type

[**CheckPronounceResponse**](CheckPronounceResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWordDetailApiV1WordsWordIdGet**
> WordDetailResponse getWordDetailApiV1WordsWordIdGet(wordId)

Get Word Detail

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getWordsApi();
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

# **listingWordApiV1WordsGet**
> ListingWordResponse listingWordApiV1WordsGet(keyword, total, difficultLevel)

Listing Word

### Example
```dart
import 'package:pronounce_go_api/api.dart';

final api = PronounceGoApi().getWordsApi();
final String keyword = keyword_example; // String | 
final String total = total_example; // String | 
final String difficultLevel = difficultLevel_example; // String | 

try {
    final response = api.listingWordApiV1WordsGet(keyword, total, difficultLevel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WordsApi->listingWordApiV1WordsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**|  | [optional] 
 **total** | **String**|  | [optional] 
 **difficultLevel** | **String**|  | [optional] 

### Return type

[**ListingWordResponse**](ListingWordResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

