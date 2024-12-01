# pronounce_go_api.model.GetLessonDetailResponse

## Load the model package
```dart
import 'package:pronounce_go_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**name** | **String** |  | 
**description** | **String** |  | 
**userOwnerId** | **int** |  | 
**groupOwnerId** | **int** |  | 
**isPublic** | **bool** |  | 
**creatorName** | **String** |  | [optional] 
**groupOwnerName** | **String** |  | [optional] 
**words** | [**BuiltList&lt;WordBase&gt;**](WordBase.md) | List of words in the lesson | [optional] [default to ListBuilder()]
**sentences** | [**BuiltList&lt;LessonSentenceBase&gt;**](LessonSentenceBase.md) | List of sentences in the lesson | [optional] [default to ListBuilder()]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


