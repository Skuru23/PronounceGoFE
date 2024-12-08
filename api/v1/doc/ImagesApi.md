# pronounce_go_api.api.ImagesApi

## Load the API package
```dart
import 'package:pronounce_go_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadImageApiV1ImagesUploadPost**](ImagesApi.md#uploadimageapiv1imagesuploadpost) | **POST** /api/v1/images/upload | Upload Image


# **uploadImageApiV1ImagesUploadPost**
> UploadImageResponse uploadImageApiV1ImagesUploadPost(file)

Upload Image

### Example
```dart
import 'package:pronounce_go_api/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = PronounceGoApi().getImagesApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.uploadImageApiV1ImagesUploadPost(file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImagesApi->uploadImageApiV1ImagesUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | 

### Return type

[**UploadImageResponse**](UploadImageResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

