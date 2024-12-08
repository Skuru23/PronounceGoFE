# pronounce_go_api.api.ProgressApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProgressDetailApiV1ProgressesProgressIdGet**](ProgressApi.md#getprogressdetailapiv1progressesprogressidget) | **GET** /api/v1/progresses/{progress_id} | Get Progress Detail
[**listingProgressApiV1ProgressesGet**](ProgressApi.md#listingprogressapiv1progressesget) | **GET** /api/v1/progresses | Listing Progress


# **getProgressDetailApiV1ProgressesProgressIdGet**
> ProgressDetailResponse getProgressDetailApiV1ProgressesProgressIdGet(progressId)

Get Progress Detail

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getProgressApi();
final int progressId = 56; // int | 

try {
    final response = api.getProgressDetailApiV1ProgressesProgressIdGet(progressId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProgressApi->getProgressDetailApiV1ProgressesProgressIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **progressId** | **int**|  | 

### Return type

[**ProgressDetailResponse**](ProgressDetailResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingProgressApiV1ProgressesGet**
> ListingProgressResponse listingProgressApiV1ProgressesGet()

Listing Progress

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getProgressApi();

try {
    final response = api.listingProgressApiV1ProgressesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProgressApi->listingProgressApiV1ProgressesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListingProgressResponse**](ListingProgressResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

