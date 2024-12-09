# pronounce_go_api.model.ProgressDetailResponse

## Load the model package
```dart
import 'package:pronounce_go_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**lessonId** | **int** |  | 
**lessonName** | **String** |  | 
**creatorName** | **String** |  | 
**groupOwnerName** | **String** |  | 
**totalWord** | **int** |  | [optional] 
**remainWord** | **int** |  | [optional] 
**totalSentence** | **int** |  | [optional] 
**remainSentence** | **int** |  | [optional] 
**finishPercent** | **int** |  | [optional] 
**words** | [**BuiltList&lt;ProgressWordDetailItem&gt;**](ProgressWordDetailItem.md) | List of words in the lesson | [optional] [default to ListBuilder()]
**sentences** | [**BuiltList&lt;ProgressSentenceDetailItem&gt;**](ProgressSentenceDetailItem.md) | List of sentences in the lesson | [optional] [default to ListBuilder()]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


