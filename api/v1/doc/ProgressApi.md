# pronounce_go_api.api.ProgressApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupApiV1ProgressesPost**](ProgressApi.md#creategroupapiv1progressespost) | **POST** /api/v1/progresses | Create Group
[**listingGroupApiV1ProgressesGet**](ProgressApi.md#listinggroupapiv1progressesget) | **GET** /api/v1/progresses | Listing Group


# **createGroupApiV1ProgressesPost**
> createGroupApiV1ProgressesPost(createGroupRequest)

Create Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getProgressApi();
final CreateGroupRequest createGroupRequest = ; // CreateGroupRequest | 

try {
    api.createGroupApiV1ProgressesPost(createGroupRequest);
} catch on DioException (e) {
    print('Exception when calling ProgressApi->createGroupApiV1ProgressesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createGroupRequest** | [**CreateGroupRequest**](CreateGroupRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingGroupApiV1ProgressesGet**
> GetGroupsResponse listingGroupApiV1ProgressesGet(name, sortBy)

Listing Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getProgressApi();
final String name = name_example; // String | 
final String sortBy = sortBy_example; // String | 

try {
    final response = api.listingGroupApiV1ProgressesGet(name, sortBy);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProgressApi->listingGroupApiV1ProgressesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] 

### Return type

[**GetGroupsResponse**](GetGroupsResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

