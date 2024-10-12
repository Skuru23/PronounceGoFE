# pronunceGo.api.AuthApi

## Load the API package
```dart
import 'package:pronunceGo/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginApiV1LoginPost**](AuthApi.md#loginapiv1loginpost) | **POST** /api/v1/login | Login
[**signupApiV1SignupPost**](AuthApi.md#signupapiv1signuppost) | **POST** /api/v1/signup | Signup


# **loginApiV1LoginPost**
> LoginResponse loginApiV1LoginPost(loginRequest)

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

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
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

