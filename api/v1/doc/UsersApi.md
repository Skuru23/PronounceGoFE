# pronounce_go_api.api.UsersApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserApiV1UsersGet**](UsersApi.md#getuserapiv1usersget) | **GET** /api/v1/users | Get User
[**updateUserApiV1UsersPut**](UsersApi.md#updateuserapiv1usersput) | **PUT** /api/v1/users | Update User


# **getUserApiV1UsersGet**
> UserResponse getUserApiV1UsersGet()

Get User

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getUsersApi();

try {
    final response = api.getUserApiV1UsersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->getUserApiV1UsersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserApiV1UsersPut**
> updateUserApiV1UsersPut(updateUserRequest)

Update User

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getUsersApi();
final UpdateUserRequest updateUserRequest = ; // UpdateUserRequest | 

try {
    api.updateUserApiV1UsersPut(updateUserRequest);
} catch on DioException (e) {
    print('Exception when calling UsersApi->updateUserApiV1UsersPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

