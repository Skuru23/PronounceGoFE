// Openapi Generator last run: : 2024-12-16T19:07:43.723695
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties:
      DioProperties(pubName: 'pronounce_go_api', pubAuthor: 'truong'),
  inputSpec: RemoteSpec(path: 'http://localhost:8000/api/v1/openapi.json'),
  typeMappings: {'Pet': 'ExamplePet'},
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'api/v1',
)
class Example {}