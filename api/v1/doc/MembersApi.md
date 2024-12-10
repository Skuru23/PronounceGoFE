# pronounce_go_api.api.MembersApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveMemberApiV1MembersMemberIdApprovePost**](MembersApi.md#approvememberapiv1membersmemberidapprovepost) | **POST** /api/v1/members/{member_id}/approve | Approve Member


# **approveMemberApiV1MembersMemberIdApprovePost**
> approveMemberApiV1MembersMemberIdApprovePost(memberId)

Approve Member

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getMembersApi();
final int memberId = 56; // int | 

try {
    api.approveMemberApiV1MembersMemberIdApprovePost(memberId);
} catch on DioException (e) {
    print('Exception when calling MembersApi->approveMemberApiV1MembersMemberIdApprovePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memberId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

