# pronunceGo.api.AuthApi

## Load the API package
```dart
import 'package:pronunceGo/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginApiV1LoginPost**](AuthApi.md#loginapiv1loginpost) | **POST** /api/v1/login | Login
[**meApiV1MeGet**](AuthApi.md#meapiv1meget) | **GET** /api/v1/me | Me
[**refreshTokenApiV1RefreshTokenGet**](AuthApi.md#refreshtokenapiv1refreshtokenget) | **GET** /api/v1/refresh-token | Refresh Token
[**signupApiV1SignupPost**](AuthApi.md#signupapiv1signuppost) | **POST** /api/v1/signup | Signup


# **loginApiV1LoginPost**
> TokenResponse loginApiV1LoginPost(loginRequest)

Login

### Example
```dart
import 'package:pronunceGo/api.dart';

final api = PronunceGo().getAuthApi();
final LoginRequest loginRequest = ; // LoginRequest | 

try {
    final response = api.loginApiV1LoginPost(loginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->loginApiV1LoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meApiV1MeGet**
> GetMeResponse meApiV1MeGet()

Me

### Example
```dart
import 'package:pronunceGo/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronunceGo().getAuthApi();

try {
    final response = api.meApiV1MeGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->meApiV1MeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetMeResponse**](GetMeResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshTokenApiV1RefreshTokenGet**
> TokenResponse refreshTokenApiV1RefreshTokenGet(refreshToken)

Refresh Token

### Example
```dart
import 'package:pronunceGo/api.dart';

final api = PronunceGo().getAuthApi();
final String refreshToken = refreshToken_example; // String | 

try {
    final response = api.refreshTokenApiV1RefreshTokenGet(refreshToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refreshTokenApiV1RefreshTokenGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signupApiV1SignupPost**
> signupApiV1SignupPost(signupRequest)

Signup

### Example
```dart
import 'package:pronunceGo/api.dart';

final api = PronunceGo().getAuthApi();
final SignupRequest signupRequest = ; // SignupRequest | 

try {
    api.signupApiV1SignupPost(signupRequest);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signupApiV1SignupPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signupRequest** | [**SignupRequest**](SignupRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

