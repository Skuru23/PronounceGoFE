# pronounce_go_api.api.GroupsApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupApiV1GroupsPost**](GroupsApi.md#creategroupapiv1groupspost) | **POST** /api/v1/groups | Create Group
[**getGroupDetailApiV1GroupsGroupIdGet**](GroupsApi.md#getgroupdetailapiv1groupsgroupidget) | **GET** /api/v1/groups/{group_id} | Get Group Detail
[**getGroupMembersApiV1GroupsGroupIdMembersGet**](GroupsApi.md#getgroupmembersapiv1groupsgroupidmembersget) | **GET** /api/v1/groups/{group_id}/members | Get Group Members
[**joinGroupApiV1GroupsGroupIdJoinPatch**](GroupsApi.md#joingroupapiv1groupsgroupidjoinpatch) | **PATCH** /api/v1/groups/{group_id}/join | Join Group
[**listingGroupApiV1GroupsGet**](GroupsApi.md#listinggroupapiv1groupsget) | **GET** /api/v1/groups | Listing Group
[**listingTopGroupApiV1GroupsTopGroupsGet**](GroupsApi.md#listingtopgroupapiv1groupstopgroupsget) | **GET** /api/v1/groups/top-groups | Listing Top Group


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

# **getGroupDetailApiV1GroupsGroupIdGet**
> GetGroupDetailResponse getGroupDetailApiV1GroupsGroupIdGet(groupId)

Get Group Detail

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getGroupsApi();
final int groupId = 56; // int | 

try {
    final response = api.getGroupDetailApiV1GroupsGroupIdGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->getGroupDetailApiV1GroupsGroupIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**|  | 

### Return type

[**GetGroupDetailResponse**](GetGroupDetailResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupMembersApiV1GroupsGroupIdMembersGet**
> GetGroupMembersResponse getGroupMembersApiV1GroupsGroupIdMembersGet(groupId)

Get Group Members

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getGroupsApi();
final int groupId = 56; // int | 

try {
    final response = api.getGroupMembersApiV1GroupsGroupIdMembersGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->getGroupMembersApiV1GroupsGroupIdMembersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**|  | 

### Return type

[**GetGroupMembersResponse**](GetGroupMembersResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinGroupApiV1GroupsGroupIdJoinPatch**
> joinGroupApiV1GroupsGroupIdJoinPatch(groupId)

Join Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getGroupsApi();
final int groupId = 56; // int | 

try {
    api.joinGroupApiV1GroupsGroupIdJoinPatch(groupId);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->joinGroupApiV1GroupsGroupIdJoinPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingGroupApiV1GroupsGet**
> GetGroupsResponse listingGroupApiV1GroupsGet(name, isMember, sortBy)

Listing Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getGroupsApi();
final String name = name_example; // String | 
final String isMember = isMember_example; // String | 
final String sortBy = sortBy_example; // String | 

try {
    final response = api.listingGroupApiV1GroupsGet(name, isMember, sortBy);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->listingGroupApiV1GroupsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **isMember** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] 

### Return type

[**GetGroupsResponse**](GetGroupsResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingTopGroupApiV1GroupsTopGroupsGet**
> ListingTopGroupResponse listingTopGroupApiV1GroupsTopGroupsGet()

Listing Top Group

### Example
```dart
import 'package:pronounce_go_api/api.dart';

final api = PronounceGoApi().getGroupsApi();

try {
    final response = api.listingTopGroupApiV1GroupsTopGroupsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupsApi->listingTopGroupApiV1GroupsTopGroupsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListingTopGroupResponse**](ListingTopGroupResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

