# pronounce_go_api.api.GroupsApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupApiV1GroupsGet**](GroupsApi.md#creategroupapiv1groupsget) | **GET** /api/v1/groups | Create Group
[**createGroupApiV1GroupsPost**](GroupsApi.md#creategroupapiv1groupspost) | **POST** /api/v1/groups | Create Group


# **createGroupApiV1GroupsGet**
> GetGroupsResponse createGroupApiV1GroupsGet(page, perPage, name, sortBy)

Create Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getGroupsApi();
final int page = 56; // int | 
final int perPage = 56; // int | 
final String name = name_example; // String | 
final String sortBy = sortBy_example; // String | 

try {
    final response = api.createGroupApiV1GroupsGet(page, perPage, name, sortBy);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->createGroupApiV1GroupsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] 
 **perPage** | **int**|  | [optional] 
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

# **createGroupApiV1GroupsPost**
> createGroupApiV1GroupsPost(createGroupRequest)

Create Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getGroupsApi();
final CreateGroupRequest createGroupRequest = ; // CreateGroupRequest | 

try {
    api.createGroupApiV1GroupsPost(createGroupRequest);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->createGroupApiV1GroupsPost: $e\n');
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

