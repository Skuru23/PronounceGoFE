// Openapi Generator last run: : 2024-10-13T20:52:49.744459
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties:
      DioProperties(pubName: 'pronunceGo', pubAuthor: 'Truong1'),
  inputSpec: RemoteSpec(path: 'http://localhost:8000/api/v1/openapi.json'),
  typeMappings: {'Pet': 'ExamplePet'},
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'lib/api/v1',
)
class Example {}